#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
TARGET_NUMBER=$[ ( $RANDOM % 1000 )  + 1 ]


echo "Enter your username:"
read USERNAME
USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME';")
if [[ -z $USER ]]
then
  USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES=$($PSQL "SELECT games_count FROM users WHERE username = '$USERNAME';")
  BEST_SCORE=$($PSQL "SELECT best_score FROM users WHERE username = '$USERNAME';")
  echo "Welcome back, $USER! You have played $GAMES games, and your best game took $BEST_SCORE guesses."
fi

GUESS_GAME() {
  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  GUESS_COUNT=0
  TOTAL_GAMES=$(($1 + 1))
  BEST_SCORE=$2
  while [[ $GUESS -ne $TARGET_NUMBER ]]
  do
    GUESS_COUNT=$((GUESS_COUNT+1))
    if [[ $GUESS =~ ^[+-]?[0-9]+$ ]]
    then
      if [[ $GUESS -gt $TARGET_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
        read GUESS
      else
        echo "It's lower than that, guess again:"
        read GUESS
      fi
    else
      echo That is not an integer, guess again:
      read GUESS
    fi
  done
  GUESS_COUNT=$(($GUESS_COUNT+1))
  echo "You guessed it in $GUESS_COUNT tries. The secret number was $TARGET_NUMBER. Nice job!"

  if [[ $GUESS_COUNT -lt $BEST_SCORE || $BEST_SCORE -eq 0 ]]
  then
    INSERT_SCORE=$($PSQL "UPDATE users SET best_score = $GUESS_COUNT, games_count = $TOTAL_GAMES WHERE username='$USERNAME';")
  else
    INSERT_SCORE=$($PSQL "UPDATE users SET games_count = $TOTAL_GAMES WHERE username='$USERNAME';")
  fi
  
}

GUESS_GAME $GAMES $BEST_SCORE