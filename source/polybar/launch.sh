#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/main_bar.log /tmp/second_bar.log 
polybar main_bar 2>&1 | tee -a /tmp/main_bar.log & disown
polybar second_bar 2>&1 | tee -a /tmp/second_bar.log & disown

echo "Bars launched..."
