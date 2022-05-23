#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
sleep 1

# Launch the bar
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar -qr main -c "$DIR"/config.ini &
done
