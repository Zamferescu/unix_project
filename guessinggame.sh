#!/bin/bash

# Function to get the guess from the user
get_guess() {
    read -p "How many files are in the current directory? " guess
}

# Main loop
while true; do
    get_guess

    # Get the actual number of files in the current directory
    file_count=$(ls -1A | wc -l)

    # Check if the guess is correct
    if [[ $guess -eq $file_count ]]; then
        echo "Congratulations, your guess is correct!"
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Too low, try again."
    else
        echo "Too high, try again."
    fi
done