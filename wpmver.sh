#!/bin/bash
echo "This script will just get wallpapers from my repo. Confirm if you want to continue or not."
confirm=""
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
if [ $confirm = Y ]; then
    echo "Moving wallpapers."
    mkdir ~/wallpaper
    cd wallpaper
    mv -v * ~/wallpaper
    cd ..
    echo "Done."
else 
    echo "Exiting."
    exit 1
fi
