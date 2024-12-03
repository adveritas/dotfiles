#!/bin/bash


WALLPAPER_DIR="$HOME/.config/wallpapers"

WALLPAPER_PATH=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

wal -i "$WALLPAPER_PATH"

swww img "$WALLPAPER_PATH"

source "$HOME/.cache/wal/colors.sh"

if [[ "$WALLPAPER_PATH" =~ \.jpg$|\.jpeg$ ]]; then
  # It's a JPG file, so just copy it
  cp "$WALLPAPER_PATH" ~/.cache/cached-wallpaper.jpg
  echo "Wallpaper copied as JPG."
elif [[ "$WALLPAPER_PATH" =~ \.png$ ]]; then
  # It's a PNG file, so convert it to JPG
  convert "$WALLPAPER_PATH" ~/.cache/cached-wallpaper.jpg
  echo "Wallpaper converted from PNG to JPG."
else
  # Not a JPG or PNG file
  echo "Error: Unsupported wallpaper format. Only PNG and JPG are supported."
  exit 1
fi


echo "Wallpaper set to: $WALLPAPER_PATH"

echo "$WALLPAPER_PATH" > ~/.cache/current-wallpaper
