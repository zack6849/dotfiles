#!/bin/bash

# Wallpaper shuffler configuration
# Delay between wallpaper changes in seconds
DELAY=300

# Path to the wallpaper randomizer script
RANDOMIZER_SCRIPT="$HOME/.config/hypr/scripts/wallpaper-randomizer/random-wallpaper.sh"

# Check if the randomizer script exists
if [ ! -f "$RANDOMIZER_SCRIPT" ]; then
    echo "Error: Wallpaper randomizer script not found at $RANDOMIZER_SCRIPT"
    exit 1
fi

# Main loop - only run while Hyprland is running
while pgrep -x "Hyprland" > /dev/null; do
    # Call the wallpaper randomizer script
    "$RANDOMIZER_SCRIPT"
    # Wait for the specified delay
    sleep "$DELAY"
done