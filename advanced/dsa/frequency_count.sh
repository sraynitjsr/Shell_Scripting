#!/bin/bash

arr=("apple" "orange" "banana" "apple" "orange" "grape")

declare -A freq

for element in "${arr[@]}"; do
    ((freq["$element"]++))
done

echo "Element Frequency"
for key in "${!freq[@]}"; do
    echo "$key ${freq[$key]}"
done
