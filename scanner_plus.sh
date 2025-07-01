#!/bin/bash

echo -n "Enter directory path: "
read dir

if [ -d "$dir" ]; then
    echo -e "\n[+] Scanning: $dir"

    count_files=0
    count_dirs=0

    for item in "$dir"/*; do
        if [ -f "$item" ]; then
            echo "$(basename "$item") → Regular file"
            ((count_files++))
        elif [ -d "$item" ]; then
            echo "$(basename "$item") → Directory"
            ((count_dirs++))
        else
            echo "$(basename "$item") → Other"
        fi
    done

    echo -e "\n✅ Total regular files: $count_files"
    echo "📁 Total directories: $count_dirs"
else
    echo -e "\e[31m⚠️ Directory not found!\e[0m"
fi
