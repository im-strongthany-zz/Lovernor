#!/bin/bash
core=0
governor=powersave
while [ $core != 4 ]; do
echo $governor > /sys/devices/system/cpu/cpu$core/cpufreq/scaling_governor
echo -e "\e[1;35m Processor core number $core is now $governor \e[0m"
let core=core+1
done

#https://unix.stackexchange.com/questions/43408/printing-colored-text-using-echo
