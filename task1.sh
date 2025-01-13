#!/bin/bash
LOG_FILE="$1_$(date +%F).log"
exec &>> >(tee -a "$LOG_FILE")
# Check memory
echo "Memory Information:"
echo "$(free )"

printf "\n"
printf "\n"

# Check battery status    
echo "Battery Status:"
echo "$(acpi)"
printf "\n"
printf "\n"

# Check Processor temperature
echo "Processor Temperature:"
echo "$(acpi -t )"

printf "\n"
printf "\n"

# Check CPU usage
cpu=$(echo "CPU $(LC_ALL=C top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')% RAM $(free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }')" | cut -d' ' -f2 )
echo "CPU Usage: $cpu"
 