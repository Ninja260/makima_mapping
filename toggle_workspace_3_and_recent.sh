#!/bin/bash

current_workspace=$(hyprctl activeworkspace -j | jq '.id')

if [ "$current_workspace" -eq 3 ]; then
    hyprctl dispatch workspace previous
else
    hyprctl dispatch workspace 3
fi
