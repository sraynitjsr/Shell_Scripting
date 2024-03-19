#!/bin/bash

array=(1 2 3 4 1 2 3 1 2 1)
declare -A freq

for elem in "${array[@]}"; do
    hash=$(echo "$elem" | md5sum | cut -d ' ' -f1)
    ((freq[$hash]++))
done

for key in "${!freq[@]}"; do
    echo "Element $(echo "$key" | cut -c1-8): ${freq[$key]} occurrences"
done
