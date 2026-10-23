#!/bin/bash

echo "Welcome to the Guess the number game!"
echo "===================================="

number=$((RANDOM%100+1))
guess=-1
count=0
name=$1


if [[ -z $name ]]; then
    read -p"Usage: /guess-the-num.sh <name> \n where name is the user playing the game" name
fi


echo "===================================================="
echo "Hi $name, Welcome to our guess the number game! "
echo "===================================================="

while (( $guess != $number));  do
  ((count++))
 read -p "please guess a number : " guess

 if [[ -z $guess ]]; then 

    echo "please enter a valid number"
    exit 1;
 elif (( $guess > $number )); then 
    echo "your guess is too high"
 elif (( $guess < $number )); then
    echo "your guess is too low"
 else
    echo "congratulations! you guessed the number :)"
    echo "it took you $count guesses"

 fi
done
