#!/bin/bash

find_four_elements() {
    local arr=("$@")
    local target=$1
    local length=${#arr[@]}

    IFS=$'\n' sorted=($(sort -n <<<"${arr[*]}"))
    unset IFS

    for ((i=0; i<$length-3; i++)); do
        for ((j=i+1; j<$length-2; j++)); do
            left=$((j+1))
            right=$((length-1))
            while [ $left -lt $right ]; do
                local sum=$((sorted[i] + sorted[j] + sorted[left] + sorted[right]))
                if [ $sum -eq $target ]; then
                    echo "${sorted[i]} ${sorted[j]} ${sorted[left]} ${sorted[right]}"
                    return
                elif [ $sum -lt $target ]; then
                    ((left++))
                else
                    ((right--))
                fi
            done
        done
    done

    echo "No four elements found that sum to $target"
}

arr=(10 2 3 4 5 9 7 8)
target=23

find_four_elements "$target" "${arr[@]}"
