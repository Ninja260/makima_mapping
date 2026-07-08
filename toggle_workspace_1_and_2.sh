#!/bin/bash

current_workspace=$(hyprctl activeworkspace -j | jq '.id')

if [ "$current_workspace" -eq 1 ]; then
    hyprctl dispatch workspace 2
else
    hyprctl dispatch workspace 1
fi
