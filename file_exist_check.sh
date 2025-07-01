#!/bin/bash

count_found=0
count_missing=0

files=("/etc/passwd" "/etc/shadow" "/etc/hosts")

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo -e "\e[32m[+] Found: $file\e[0m"
    ((count_found++))
  else
    echo -e "\e[31m[-] Missing: $file\e[0m"
    ((count_missing++))
  fi
done

echo -e "\n✅ Total found: $count_found"
echo "❌ Total missing: $count_missing"
