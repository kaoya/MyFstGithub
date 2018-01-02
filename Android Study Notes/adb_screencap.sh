#!/bin/bash
basepath=$(cd $(dirname $0); pwd)
timestamp=$(date +%F"-"%H%M%S)
expt_file="$basepath/screen_$timestamp.png"
temp_file="/sdcard/screencap.tmp"

# List of devices attached
adb devices

# screencap...
adb shell /system/bin/screencap -p $temp_file

# export screencap file
adb pull $temp_file $expt_file

# delete temp file
adb shell rm $temp_file

echo
echo "screencap output: [ $expt_file ]"
echo
