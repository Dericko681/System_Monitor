# System_Monitor
This project is aimed at implementing  custom system monitor in ubuntu
This projects will consist of two parts
1. build a monitoring tool using commands like top, htop and iotop to display essential system parameters when prompted by a user
2. automate a shell script to run every time the system boots. this will run as a background task and will display essential system uptdates on the terminal when the system parameters change.

task1:
decalare file to store the output from grep of top: info
grep essentials from top  and send to info
display battery using acpi
display system temp using acpi -t
run info

task2:
get current per memory from free
if mem 80-100 : small memory available : 80-100
if per cpu > 80: you are using 80% of cpu
if battery 30% display: low batter
if temp > 25 dc display: overheating