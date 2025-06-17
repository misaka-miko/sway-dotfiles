#!/usr/bin/env bash
if pgrep -x "wlogout" > /dev/null; then
  pkill -x "wlogout"
fi

scrDir=$(dirname "$(realpath "$0")")
wLayout="/home/misaka/.config/wlogout/layout"
wlTmplt="/home/misaka/.config/wlogout/style.css"

output_info=$(swaymsg -t get_outputs | jq '.[] | select(.focused==true)')
x_mon=$(echo "$output_info" | jq '.current_mode.width')
y_mon=$(echo "$output_info" | jq '.current_mode.height')

sway_scale=$(echo "$output_info" | jq '.scale')
# echo $x_mon
# echo $y_mon
# echo $sway_scale
export fntSize=$((y_mon * 2 / 100))

wlColms=6
export mgn=$(echo "$y_mon * 28 / $sway_scale" | bc -l | cut -d. -f1)
export hvr=$(echo "$y_mon * 23 / $sway_scale" | bc -l | cut -d. -f1)

sway_border=10
export active_rad=$((sway_border * 5))
export button_rad=$((sway_border * 8))

wlogout -b "${wlColms}" -c 0 -r 0 --layout "${wLayout}" --css <(echo "${wlStyle}") --protocol layer-shell
