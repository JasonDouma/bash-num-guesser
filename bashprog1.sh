#!/bin/bash

echo "Number Guessing Game Running."

while true; do
    # Define the range
    read -p "Enter Min Num: " min
    read -p "Enter Max Num: " max

    # Generate random number
    rand_num=$(( RANDOM % (max - min + 1) + min ))

    # Ask for the user's guess
    sleep 1
    read -p "Guess The Num: " guess

	sleep 1
    if [[ "$guess" -ne "$rand_num" ]]; then
        echo "Your Guess Was Incorrect! The correct number was $rand_num."
    else
        echo "Your Guess Was Correct!"
    fi  
	sleep 1
    # Ask if user wants to play again
    read -p "Wanna Play Again? (y/n): " choice
    if [[ "$choice" != "y" ]]; then
        echo "Exiting Game."
        break
    fi 
done 
