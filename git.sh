#!/bin/bash

# List of directories to keep
declare -a keep_directories=("alacritty" "tmux" "neofetch" "nvim" "bspwm" "sxhkd" "dunst" "fish" "espanso" "GIMP" "nitrogen" "picom" "polybar" "redshift" "redshift-poly" "rofi" "rofi.nxtperfect" "starship.toml")

# Path to search for directories
search_path="./"

# Get all directories in the search path
all_directories=($(find "$search_path" -type d -mindepth 1 -maxdepth 1))

# Loop through all directories
for dir in "${all_directories[@]}"; do
  # Extract the directory name
  dir_name=$(basename "$dir")

  # Check if the directory should be ignored
  ignore=false
  for keep_dir in "${keep_directories[@]}"; do
    if [[ "$dir_name" == "$keep_dir" ]]; then
      ignore=true
      break
    fi
  done

  # Output the directory if it should be ignored
  if [ "$ignore" == false ]; then
    echo "$dir_name"
  fi
done
