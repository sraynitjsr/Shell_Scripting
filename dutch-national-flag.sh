#!/bin/bash

sort_colors() {
    local input_array=("$@")
    local length=${#input_array[@]}

    local count_0=0
    local count_1=0
    local count_2=0

    for element in "${input_array[@]}"; do
        case $element in
            0) ((count_0++));;
            1) ((count_1++));;
            2) ((count_2++));;
        esac
    done

    for ((i = 0; i < count_0; i++)); do
        input_array[i]=0
    done

    for ((i = count_0; i < count_0 + count_1; i++)); do
        input_array[i]=1
    done

    for ((i = count_0 + count_1; i < length; i++)); do
        input_array[i]=2
    done

    echo "Sorted array: ${input_array[@]}"
}

color_array=(2 1 0 1 2 0 1 2)

sort_colors "${color_array[@]}"
