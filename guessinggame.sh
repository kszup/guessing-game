#!/usr/bin/env bash
# File: guessinggame.sh
# Author: kszup


echo "Hello! Guess how many files are in this directory. No peaking!"
read guess
echo $guess
number_of_files=$(ls | wc -w) # ls -a | wc -w
echo $number_of_files

while [[ $count -gt 0 ]]
do
  echo "count is equal to $count"
  let count=$count-1
done



