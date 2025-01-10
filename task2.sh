variable1=$(echo "CPU $(LC_ALL=C top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')% RAM $(free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }')" | cut -d' ' -f2 | cut -d'%' -f1)
echo "%cup: $variable1"
variable2=$(echo "CPU $(LC_ALL=C top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')% RAM $(free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }')" | cut -d' ' -f2 | cut -d'%' -f1)

echo "%RAM: $variable2"
variable3=$(acpi -t | cut -d' ' -f4)
variable4=$(acpi | cut -d' ' -f4 | cut -d'%' -f1)

variable1=$(printf "%.0f" "$variable1")
variable2=$(printf "%.0f" "$variable2")
variable3=$(printf "%.0f" "$variable3")
variable4=$(printf "%.0f" "$variable4")
variable1=87
variable3=26
if [ $variable2 -gt 80 ]; then
    notify-send "memory over used : $variable2 of mem used"
fi
if [ $variable1 -gt 80 ]; then
    notify-send "cpu over used : $variable1 of cpu used"
fi
if [ $variable3 -gt 25 ]; then
    notify-send "high temperature : $variable3 °C"
fi
if [ $variable4 -eq 100 ]; then
    notify-send "battery full : $variable4 % "
fi

