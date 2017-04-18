#!/bin/bash
core=0
while [ $core != 3 ]; do
powersave > /sys/devices/system/cpu/cpu$core/cpufreq/scaling_governor
let core=core+1

done
