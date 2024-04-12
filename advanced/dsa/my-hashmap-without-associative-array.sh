#!/bin/bash

keys=("apple" "banana" "carrot")
values=("fruit" "fruit" "vegetable")

get_value_by_key() {
    local key="$1"
    local index
    for index in "${!keys[@]}"; do
        if [[ "${keys[$index]}" == "$key" ]]; then
            echo "${values[$index]}"
            return 0
        fi
    done
    echo "Key not found"
    return 1
}

echo "Type of apple: $(get_value_by_key "apple")"
echo "Type of banana: $(get_value_by_key "banana")"
echo "Type of carrot: $(get_value_by_key "carrot")"
