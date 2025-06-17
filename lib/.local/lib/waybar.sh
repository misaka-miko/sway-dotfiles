#!/usr/bin/bash

killall -p waybar

while pgrep -x waybar > /dev/null; do sleep 1; done

waybar
