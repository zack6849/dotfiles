#!/bin/bash

mon=$(hyprctl activeworkspace -j | jq -r '.monitor')
case "$mon" in
  DP-1)
    ws=$(( $1 + 5 )) ;;  # Shift 1-5 to 6-10
  DP-2)
    ws=$1 ;;
  *)
    ws=$1 ;;
esac

hyprctl dispatch workspace $ws