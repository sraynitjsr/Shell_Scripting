#!/bin/bash

# Define the binary array
binary_array=(0 0 1 1 1 1 1 1 1)

# Initialize a counter for counting 1's
count=0

# Loop through the array and count 1's
for element in "${binary_array[@]}"; do
    if [ "$element" -eq 1 ]; then
        count=$((count + 1))
    fi
done

# Output the count
echo "Number of 1's in the binary array: $count"
