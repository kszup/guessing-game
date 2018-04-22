#!/usr/bin/env bash
# File: guessinggame.sh
# Author: kszup


echo "Hello! Guess how many files are in this directory. No peaking!"
echo -n "Guess: "
read guess
#echo $guess

number_of_files=$(ls | wc -w) # ls -a | wc -w
#echo $number_of_files

while [[ $guess -ne $number_of_files ]]
do
  echo "The guess of $guess was INCORRECT! Try again."
  echo -n "Guess how many files are in this directory: "
  read guess
done

echo -e "\nThe guess of $guess was CORRECT! Bye."

