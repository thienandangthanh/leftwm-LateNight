#!/bin/env sh
leftwm_state=$(leftwm-state -q)
layout=$(echo "$leftwm_state" | jq -r '.workspaces[] | select(.tags[] | .focused == true) | .layout')

echo "$layout"
