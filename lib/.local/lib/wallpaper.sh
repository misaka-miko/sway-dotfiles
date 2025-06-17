#!/bin/bash

wallpaper="${HOME}/Pictures/wallpaper/ign-waifu.png"

# swww init
swww-daemon --format xrgb
sleep 0.5
swww img $wallpaper --transition-type=wipe
