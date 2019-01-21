#!/bin/bash
core=0
maxcore="$(nproc --all)"
read -p 'Hello, would you like power[s]ave, or [p]erformance?: ' input
if [ $input == "s" ]; then
        governor="powersave"
elif [ $input == "p" ]; then
        governor="performance"
fi
while [ $core != $maxcore ]; do
sudo echo $governor > /sys/devices/system/cpu/cpu$core/cpufreq/scaling_governor
echo -e "\e[1;35m Processor core number $core is now $governor \e[0m"
let core=core+1
done
