#!/bin/bash

WALLPAPER_CACHE="$HOME/.cache/current-wallpaper"

if [[ -f "$WALLPAPER_CACHE" ]]; then
    WALLPAPER_PATH=$(cat "$WALLPAPER_CACHE")
    WALLPAPER_EXT="${WALLPAPER_PATH##*.}"
    if [[ -f "$WALLPAPER_PATH" ]]; then
        swww img "$WALLPAPER_PATH"
        wal -i "$WALLPAPER_PATH"
	cp $WALLPAPER_PATH ~/.cache/cached-wallpaper.$WALLPAPER_EXT
        
        echo "Wallpaper set to $WALLPAPER_PATH and pywal colors applied."
    else
        echo "Error: Wallpaper file '$WALLPAPER_PATH' does not exist."
        exit 1
    fi
else
    ~/.config/scripts/wallpaper.sh
fi



