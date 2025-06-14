#!/usr/bin/env bash

dir="$HOME/.config/rofi/cliphist/"

## Run
rofi -modi clipboard:/home/misaka/.local/lib/cliphist-rofi.sh -show clipboard -theme ${dir}/style.rasi
