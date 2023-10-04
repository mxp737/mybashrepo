#!/bin/bash

echo "Welcome to the FLAMES game!"

echo -n "Enter the first name: "
read name1

echo -n "Enter the second name: "
read name2

# Function to calculate FLAMES result
calculate_flames() {
  local flames=("Friends" "Love" "Affection" "Marriage" "Enemies" "Siblings")
  local name1=$1
  local name2=$2

  for ((i=0; i<${#name1}; i++)); do
    char="${name1:$i:1}"
    name2=$(echo "$name2" | sed "s/$char//")
  done

  for ((i=0; i<${#name2}; i++)); do
    char="${name2:$i:1}"
    flames=$(echo "$flames" | sed "s/$char//")
  done

  echo "FLAMES result: ${flames[0]}"
}

result=$(calculate_flames "$name1" "$name2")

echo "Result: $result"
