#!/bin/bash

array=(1 2 3 4 1 2 3 1 2 1)
declare -A freq

for elem in "${array[@]}"; do
    ((freq[$elem]++))
done

for key in "${!freq[@]}"; do
    echo "Element $key: ${freq[$key]} occurrences"
done
