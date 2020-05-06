#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait
sleep 10

# Launch bar
echo "---" | tee -a /tmp/polybarmain.log
polybar main >>/tmp/polybarmain.log 2>&1 &

echo "Bar launched..."