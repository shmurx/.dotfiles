#!/bin/bash

# Define the path to the MangoHud config directory
CONFIG_DIR="$HOME/.config/MangoHud"

# Check if the argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <preset_number>"
    exit 1
fi

# Determine the preset number
PRESET_NUMBER=$1
PRESET_FILE="$CONFIG_DIR/MangoHud_preset${PRESET_NUMBER}.conf"

# Check if the preset file exists
if [ ! -f "$PRESET_FILE" ]; then
    echo "Preset $PRESET_NUMBER not found!"
    exit 1
fi

# Copy the selected preset to the active config file
cp "$PRESET_FILE" "$CONFIG_DIR/MangoHud.conf"

echo "MangoHud preset $PRESET_NUMBER applied."

