#!/bin/bash

find_missing_number() {
    local input_array=("$@")
    local n=${#input_array[@]}  
    
    expected_sum=$(( (n + 1) * (n + 2) / 2 ))    
    
    actual_sum=0
    
    for element in "${input_array[@]}"; do
        ((actual_sum += element))
    done

    missing_number=$((expected_sum - actual_sum))

    echo "Missing number: $missing_number"
}

input_array=(1 2 4 6 3 7 8)

find_missing_number "${input_array[@]}"
