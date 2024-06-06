PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number='$1'")
  fi

  if [[ $1 =~ ^[A-Z][a-z]?$ ]]
  then
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$1'")
  fi

  if [[ $1 =~ ^[A-Z][a-z][a-z]+$ ]]
  then
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE name='$1'")
  fi

  if [[ -z $ATOMIC_NUMBER ]]
  then
    echo "I could not find that element in the database."
  else
    echo "$($PSQL "SELECT properties.atomic_number, atomic_mass, melting_point_celsius, boiling_point_celsius, symbol, name, type FROM properties INNER JOIN elements ON elements.atomic_number = properties.atomic_number INNER JOIN types on properties.type_id = types.type_id WHERE properties.atomic_number = $ATOMIC_NUMBER")" | 
    while IFS="|" read ATOMIC_NUMBER ATOMIC_MASS MP BP SYMBOL NAME TYPE
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MP celsius and a boiling point of $BP celsius."
    done
  fi
fi