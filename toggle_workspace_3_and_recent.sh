#!/bin/bash

current_workspace=$(hyprctl activeworkspace -j | jq '.id')

if [ "$current_workspace" -eq 3 ]; then
  hyprctl dispatch 'hl.dsp.focus({ workspace = "previous" })'
else
  hyprctl dispatch 'hl.dsp.focus({ workspace = 3 })'
fi
