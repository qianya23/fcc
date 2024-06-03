#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ Mary's Salon ~~~~~\n"
echo -e "\nWelcome!\n"

MAIN_MENU() {
  while true
  do
    echo -e "\nHere are our available services:\n"
    echo "$($PSQL "SELECT service_id, name FROM services")" | while read SERVICE_ID BAR SERVICE_NAME
    do 
      echo "$SERVICE_ID) $SERVICE_NAME"
    done

    echo -e "\nHow can we help?"
    read SERVICE_ID_SELECTED

    if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
    then
      echo -e "\nInvalid input. Please try again."
    else
      SERVICE_ID_EXIST_RESULT=$($PSQL "SELECT service_id FROM services WHERE service_id = $SERVICE_ID_SELECTED")

      if [[ -z $SERVICE_ID_EXIST_RESULT ]]
      then
        echo -e "\nSorry, we do not offer this service. Please try again."
      else 
        break
      fi
    fi    
  done

  SERVICE_NAME=$(echo $($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED") | sed -E 's/^ *| *$//')
  echo -e "\nMay I have your number?"
  read CUSTOMER_PHONE
  
  CUSTOMER_EXIST=$($PSQL "SELECT * FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  if [[ -z $CUSTOMER_EXIST ]]
  then
    echo -e "\nLooks like it's you first time visiting us! Welcome! May I know how to address you?"
    read CUSTOMER_NAME
    INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  CUSTOMER_NAME=$(echo $($PSQL "SELECT name FROM customers WHERE customer_id=$CUSTOMER_ID") | sed -E 's/^ *| *$//')
  
  echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME? " 
  read SERVICE_TIME
  
  INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments(service_id, customer_id, time) VALUES($SERVICE_ID_SELECTED, $CUSTOMER_ID, '$SERVICE_TIME')")
  echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

MAIN_MENU

  