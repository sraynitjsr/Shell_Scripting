#!/bin/bash

reverse_array() {
    local input_array=("$@")
    local length=${#input_array[@]}
    local reversed_array=()

    for ((i = length - 1; i >= 0; i--)); do
        reversed_array+=("${input_array[i]}")
    done

    return "${reversed_array[@]}"
}

integer_array=(1 2 3 4 5)

reverse_array "${integer_array[@]}"

reversed_result=("${@}")

echo "Reversed array: ${reversed_result[@]}"
