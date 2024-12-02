#!/bin/bash


WALLPAPER_DIR="$HOME/.config/wallpapers"

WALLPAPER_PATH=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

wal -i "$WALLPAPER_PATH"

swww img "$WALLPAPER_PATH"

source "$HOME/.cache/wal/colors.sh"

echo "Wallpaper set to: $WALLPAPER_PATH"

echo "$WALLPAPER_PATH" > ~/.cache/current-wallpaper
