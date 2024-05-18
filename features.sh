#!/bin/bash

# This is a sample shell script demonstrating various features of shell scripting

# 1. Hello World
echo "1. Hello, World!"

# 2. Variables
name="John"
echo "2. My name is $name"

# 3. Input from user
read -p "3. Enter your age: " age
echo "   Your age is $age"

# 4. If-else statement
if [ $age -ge 18 ]; then
  echo "4. You are an adult."
else
  echo "   You are a minor."
fi

# 5. For loop
echo "5. Counting from 1 to 5 using a for loop:"
for i in {1..5}; do
  echo "   $i"
done

# 6. While loop
echo "6. Counting from 1 to 5 using a while loop:"
counter=1
while [ $counter -le 5 ]; do
  echo "   $counter"
  ((counter++))
done

# 7. Case statement
echo "7. Select a fruit (apple, banana, or orange):"
read fruit
case $fruit in
  apple)
    echo "   You selected an apple." ;;
  banana)
    echo "   You selected a banana." ;;
  orange)
    echo "   You selected an orange." ;;
  *)
    echo "   Invalid selection." ;;
esac

# 8. Function
function greet() {
  echo "8. Greetings, $1!"
}

greet "Alice"

# 9. Arithmetic operations
echo "9. Arithmetic operations:"
num1=10
num2=5
sum=$((num1 + num2))
echo "   Sum: $sum"

# 10. Array
echo "10. Array example:"
fruits=("apple" "banana" "orange")
echo "   Fruits: ${fruits[@]}"

# 11. Iterate through array
echo "11. Iterating through the array:"
for fruit in "${fruits[@]}"; do
  echo "   $fruit"
done

# 12. Command substitution
echo "12. Current date is: $(date)"

# 13. Redirecting output to a file
echo "13. Redirecting output to a file" > output.txt

# 14. Reading from a file
echo "14. Reading from a file:"
cat output.txt

# 15. Command-line arguments
echo "15. Command-line arguments:"
echo "   Script name: $0"
echo "   Number of arguments: $#"
echo "   All arguments: $@"

# 16. Exit status
echo "16. Exit status of the last command: $?"

# 17. Sleep
echo "17. Sleeping for 3 seconds..."
sleep 3
echo "   Awake!"

# 18. Check if a command exists
echo "18. Checking if 'ls' command exists:"
if command -v ls &> /dev/null; then
  echo "   'ls' command exists."
else
  echo "   'ls' command does not exist."
fi

# 19. Conditional OR
echo "19. Conditional OR example:"
age=15
if [ $age -lt 18 ] || [ $age -ge 65 ]; then
  echo "   You are either a minor or a senior citizen."
else
  echo "   You are neither a minor nor a senior citizen."
fi

# 20. Cleanup
echo "20. Cleaning up..."
rm output.txt

# 21. Function with return value
function add() {
  local sum=$(( $1 + $2 ))
  return $sum
}
add 3 4
result=$?
echo "21. The sum of 3 and 4 is $result"

# 22. String manipulation
message="Hello, World!"
echo "22. String manipulation:"
echo "   Length of message: ${#message}"
echo "   Substring (0-4): ${message:0:5}"
echo "   Replace 'World' with 'Shell': ${message/World/Shell}"

# 23. File existence check
filename="output.txt"
echo "23. Checking if file $filename exists:"
if [ -f "$filename" ]; then
  echo "   File $filename exists."
else
  echo "   File $filename does not exist."
fi

# 24. Reading file line by line
echo -e "First Line\nSecond Line\nThird Line" > sample.txt
echo "24. Reading file line by line:"
while IFS= read -r line; do
  echo "   $line"
done < sample.txt
rm sample.txt

# 25. Trap command
echo "25. Using trap to handle script interruption:"
trap "echo '   Script interrupted!' && exit 1" SIGINT
echo "   Press Ctrl+C to test interruption."
sleep 10
trap - SIGINT
echo "   Script execution completed without interruption."

echo "   Script execution complete."
