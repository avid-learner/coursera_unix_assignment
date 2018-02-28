#!/bin/bash
# File: guessinggame.sh

function make_guess()
{
    echo "How many files are in the current directory?"
    read guess
    if [ $guess -lt $1 ]; then
        echo "you guessed too low"
    elif [ $guess -gt $1 ]; then
        echo "you guessed too high"
    else 
        echo "your guess is correct, congratulations!"
        return 0
    fi
    return 1
}

files_count=$(ls | wc -l)

while true
do
    make_guess $files_count && exit 0
done

