#!/bin/env bash

# Function to count files in current directory
file_count() {
    local count=0
    for file in *; do
        if [[ -f "$file" ]]; then
            count=$((count + 1))
        fi
    done
    echo "$count"
}

# Get the actual number of files
answer=$(file_count)

# Welcome message
echo "Welcome to the guessing game!"
echo "Can you guess how many files are in the current directory?"

# Main game loop
guess=-1
while [[ $guess -ne $answer ]]; do
    echo "Please enter a guess:"
    read guess

    if [[ $guess -lt $answer ]]; then
        echo "Your guess is too low."
    elif [[ $guess -gt $answer ]]; then
        echo "Your guess is too high."
    fi
done

echo "Congratulations! You guessed correctly!"
