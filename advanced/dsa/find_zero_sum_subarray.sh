#!/bin/bash

find_zero_sum_subarray() {
    local arr=("$@")
    local length=${#arr[@]}
    local prefix_sum=0
    declare -A sum_map

    sum_map[0]=-1

    for ((i = 0; i < length; i++)); do
        prefix_sum=$((prefix_sum + arr[i]))

        if [ ${sum_map[$prefix_sum]+_} ]; then
            local start_index=$((sum_map[$prefix_sum] + 1))
            local end_index=$i
            local subarray=("${arr[@]:$start_index:$((end_index - start_index + 1))}")
            echo "Subarray with sum 0 found: ${subarray[@]}"
            return
        else
            sum_map[$prefix_sum]=$i
        fi
    done

    echo "No subarray with sum 0 found"
}

arr=(4 2 -3 1 6)
find_zero_sum_subarray "${arr[@]}"
