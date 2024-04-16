#!/bin/bash

# Example 1: Match word starting with 'b' and ending with 's'
echo "Example 1:"
echo "birds" | grep -E '^b.*s$'

# Example 2: Match any word containing 'cat'
echo "Example 2:"
echo "The cat sat on the mat" | grep -E '\bcat\b'

# Example 3: Match any word starting with 'a' or 'b'
echo "Example 3:"
echo "apple banana orange" | grep -E '\b(a|b)\w+'

# Example 4: Match any word ending with 'ing'
echo "Example 4:"
echo "walking running jumping" | grep -E '\b\w+ing\b'

# Example 5: Match any word starting with 's' or 't' and ending with 'e'
echo "Example 5:"
echo "stone table house" | grep -E '\b(s|t)\w+e\b'

# Example 6: Match any word containing at least one digit
echo "Example 6:"
echo "hello123 world 456" | grep -E '\b\w*[0-9]+\w*\b'

# Example 7: Match any word containing only lowercase letters
echo "Example 7:"
echo "hello World 123" | grep -E '^[a-z]+$'

# Example 8: Match any word containing only uppercase letters
echo "Example 8:"
echo "HELLO WORLD 123" | grep -E '^[A-Z]+$'

# Example 9: Match any word containing only letters (uppercase or lowercase)
echo "Example 9:"
echo "hello World 123" | grep -E '^[a-zA-Z]+$'

# Example 10: Match any word containing 'a' followed by one or more 'b's followed by 'c'
echo "Example 10:"
echo "abc abbcc abbc aabbcc" | grep -E '\b[ab]+c\b'
