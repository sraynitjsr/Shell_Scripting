#!/bin/bash

sum_of_digits() {
    num=$1

    if [ $num -lt 10 ]; then
        echo $num
    else
        last_digit=$((num % 10))
        remaining_digits=$((num / 10))
        recursive_sum=$(sum_of_digits $remaining_digits)
        
        echo $((last_digit + recursive_sum))
    fi
}

echo -n "Enter a number: "
read input_number

result=$(sum_of_digits $input_number)

echo "Sum of digits: $result"
