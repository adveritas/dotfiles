#!/bin/bash

WALLPAPER_CACHE="$HOME/.cache/current-wallpaper"

if [[ -f "$WALLPAPER_CACHE" ]]; then
    WALLPAPER_PATH=$(cat "$WALLPAPER_CACHE")
    if [[ -f "$WALLPAPER_PATH" ]]; then
        swww img "$WALLPAPER_PATH"
        wal -i "$WALLPAPER_PATH"
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



        echo "Wallpaper set to $WALLPAPER_PATH and pywal colors applied."
    else
        echo "Error: Wallpaper file '$WALLPAPER_PATH' does not exist."
        exit 1
    fi
else
    ~/.config/scripts/wallpaper.sh
fi



