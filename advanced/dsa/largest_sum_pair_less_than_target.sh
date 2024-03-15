#!/bin/bash

find_largest_sum_pair() {
    local arr=("$@")
    local target=$1
    local length=${#arr[@]}

    IFS=$'\n' sorted=($(sort -n <<<"${arr[*]}"))
    unset IFS

    local left=0
    local right=$((length - 1))
    local max_sum=-1

    local pair_left=0
    local pair_right=0

    while [ $left -lt $right ]; do
        local sum=$((sorted[left] + sorted[right]))
        if [ $sum < $target ] && [ $sum -gt $max_sum ]; then
            max_sum=$sum
            pair_left=$left
            pair_right=$right
        fi

        if [ $sum - < $target ]; then
            ((left++))
        else
            ((right--))
        fi
    done

    if [ $max_sum -ne -1 ]; then
        echo "${sorted[pair_left]} ${sorted[pair_right]}"
    else
        echo "No pair found with sum less than $target"
    fi
}

arr=(10 2 3 4 5 9 7 8)
target=18

find_largest_sum_pair "$target" "${arr[@]}"
