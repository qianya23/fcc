#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_game -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME
FIND_USERNAME_RESULT=$($PSQL "SELECT username FROM usernames WHERE username='$USERNAME'")
if [[ -z $FIND_USERNAME_RESULT ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO usernames(username) VALUES('$USERNAME')")
else
  echo "$($PSQL "SELECT COUNT(*) AS games_played, MIN(guesses) AS best, username FROM games GROUP BY username HAVING username = '$USERNAME'")" | 
  while IFS="|" read GAMES_PLAYED BEST USERNAME
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST guesses."
  done
fi

echo -e "\nGuess the secret number between 1 and 1000:"
SECRET=$(echo $((1 + $RANDOM % 1000)))

NUMBER_OF_GUESSES=0
while [[ $GUESS != $SECRET ]]
do 
  read GUESS
  NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES+1))
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  else
    if [[ $GUESS < $SECRET ]]
    then
      echo -e "\nIt's higher than that, guess again:"
    elif [[ $GUESS > $SECRET ]]
    then 
      echo -e "\nIt's lower than that, guess again:"
    else
      INSERT_GAME=$($PSQL "INSERT INTO games(guesses, username) VALUES($NUMBER_OF_GUESSES, '$USERNAME')")
      echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET. Nice job!"
      break
    fi
  fi
done