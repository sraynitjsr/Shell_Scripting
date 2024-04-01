#!/bin/bash

maxSubArraySum() {
    local arr=("$@")
    local n=${#arr[@]}
    local max_sum=${arr[0]}
    local current_sum=${arr[0]}

    for ((i = 1; i < n; i++)); do
        current_sum=$(( ${arr[i]} + current_sum ))
        
        if [ $current_sum -gt $max_sum ]; then
            max_sum=$current_sum
        fi

        if [ $current_sum -lt 0 ]; then
            current_sum=0
        fi
    done

    echo "Maximum Subarray Sum: $max_sum"
}

arr=(-2 1 -3 4 -1 2 1 -5 4)
maxSubArraySum "${arr[@]}"
