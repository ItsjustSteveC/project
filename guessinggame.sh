#!/usr/bin/env bash
# File: guessinggame.sh

files=$(pwd | ls | wc -l)

echo "This is a guessing game"
echo "Guess how many files are in the directory"

response=0 

while [[ $response -ne $files ]] ; do
	read response
	[[ 0$response -gt $files ]] && echo "Your guess is too high, try again"
 	[[ 0$response -lt $files ]] && echo "your guess is too low. try again"

done

echo "You guessed the correct number, Congratulations"
echo "Thank you for playing"

exit 0


