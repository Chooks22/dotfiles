#!/bin/sh
# Disable mouse accel
pointer="Logitech G304"
xinput set-prop "pointer:$pointer" "libinput Accel Profile Enabled" 0, 1
