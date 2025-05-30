#!/bin/bash

MONITOR="eDP-2"
MONITOR2="eDP-1"

# Check if the monitor is currently enabled
if hyprctl monitors -j | grep -q "\"name\": \"$MONITOR\"" ; then
    # Monitor is enabled, disable it
    hyprctl keyword monitor "$MONITOR,disable"
    #hyprctl keyword monitor "$MONITOR2,2880x1800,0x0,1"

else
    # Monitor is disabled, enable it (set your preferred resolution/position/scale)
    hyprctl keyword monitor "$MONITOR,2880x1800@120,0x1800,2"
    hyprctl keyword monitor "$MONITOR2,2880x1800@120,0x0,2"
fi

