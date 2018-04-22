#!/usr/bin/env bash
# File: guessinggame.sh
# Author: kszup

function lowhigh {
  # Function takes two arguments: guess and number of files
  if [[ $1 -lt $2 ]]
  then
    echo "The guess is too LOW! Try again."
  elif [[ $1 -gt $2 ]]
  then
    echo "The guess is too HIGH! Try again."
  else
    echo "Error"
  fi
}
 

echo "Hello! Guess how many files are in this directory. No peaking!"
echo -n "Guess: "
read guess
#echo $guess

number_of_files=$(ls | wc -w) # ls -a | wc -w
#echo $number_of_files # For testing

while [[ $guess -ne $number_of_files ]]
do
  #echo "The guess of $guess was INCORRECT! Try again."
  lowhigh $guess $number_of_files
  echo -n "Guess how many files are in this directory: "
  read guess
done

echo -e "\nCongratulations! The guess of $guess is CORRECT! Bye."

