#!/bin/bash

current_workspace=$(hyprctl activeworkspace -j | jq '.id')

if [ "$current_workspace" -eq 1 ]; then
  hyprctl dispatch 'hl.dsp.focus({ workspace = 2 })'
else
  hyprctl dispatch 'hl.dsp.focus({ workspace = 1 })'
fi
