#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

PREVIOUS_USER=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games INNER JOIN users USING (user_id) WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING (user_id) WHERE username = '$USERNAME'")

SECRET_NUMBER () {
  GUESSES=0
  NUMBER=$(( $RANDOM % 1000 + 1 ))
  echo "Guess the secret number between 1 and 1000:" 
  read GUESS
  while [ ! $GUESS = $NUMBER ]
  do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read GUESS
  else
      if [[ $GUESS -lt $NUMBER ]]
        then
          ((GUESSES++))
          echo "It's higher than that, guess again:"
          read GUESS
        else
          ((GUESSES++))
          echo "It's lower than that, guess again:"
          read GUESS
    fi
  fi
 done
 if [[ $GUESS = $NUMBER ]]
 then 
  ((GUESSES++))
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  echo $($PSQL "INSERT INTO GAMES (user_id, guesses) VALUES ($USER_ID, $GUESSES)")
  echo "You guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!"
  fi
}

if [[ $PREVIOUS_USER ]]
then 
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  SECRET_NUMBER
fi

if [[ -z $PREVIOUS_USER ]]  
then 
  INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  SECRET_NUMBER
fi
