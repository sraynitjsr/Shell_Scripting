#!/bin/bash

is_leap_year() {
    year=$1
    
    if (( year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) )); then
        echo "$year is a leap year."
    else
        echo "$year is not a leap year."
    fi
}

# Main script
echo "Enter a year:"
read input_year

if ! [[ "$input_year" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid year."
    exit 1
fi

is_leap_year "$input_year"
