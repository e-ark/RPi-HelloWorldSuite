#!/bin/sh

# settings
user=gc4unix # Input your twitter id

# for Button
echo "17" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio17/direction

while true; do
    if [ `cat /sys/class/gpio/gpio17/value` -eq 1 ]; then
	echo "tweeting now..."
	echo "hello world form Raspberry Pi at `date` #gc4unix" | sudo -u pi tw --pipe --user=$user
    else
	sleep 1
    fi
done

# echo "17" > /sys/class/gpio/unexport
