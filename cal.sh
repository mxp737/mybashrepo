#!/bin/bash

echo "Please select your math operation"
echo "1. Add"
echo "2. Sub"
echo "3. Mul"
echo "4. Div"
echo "5. Reminder"
echo "6. (a+b)^2"
echo "7. (a-b)^2"
read selection

if [ $selection == "1" ] || [ $selection == "2" ] || [ $selection == "3" ] || [ $selection == "4" ] || [ $selection == "5" ] || [ $selection == "6" ] || [ $selection == "7" ]; then

    echo "enter firstNumber"
    read firstNumber

    echo "enter secondNumber"
    read secondNumber
else
    echo "You have made an invalid section, please select from 1 to 7"
fi

add(){
    addResult=$(( $1 + $2 ))
    echo "Addition result is: $addResult"
}

sub(){
    subResult=$(( $1 - $2 ))
    echo "Sub result is: $subResult"
}

mul(){
    mulResult=$(( $1 * $2 ))
    echo "Mul result is: $mulResult"
}

div(){
    divResult=$(( $1 / $2 ))
    echo "Div result is: $divResult"
}
reminder(){
   reminderResult=$(( $1 % $2 ))
   echo "Reminder result is: $reminderResult"
}

aPlusBWholeSquare(){
    a=$1
    b=$2
    sumResult=$(( $a**2+$b**2 + 2*$a*$b ))
    echo "sum result is: $sumResult"
}

aMinusBWholeSquare(){
   wholesqureResult=$(( $1**2 + $2**2 - 2*$1*$2  ))
    echo "Wholesqure result is: $wholesqureResult"
}

if [ $selection == "1" ]; then
    add $firstNumber $secondNumber
elif [ $selection == "2" ]; then
    sub $firstNumber $secondNumber
elif [ $selection == "3" ]; then
    mul $firstNumber $secondNumber
elif [ $selection == "4" ]; then
    div $firstNumber $secondNumber
elif [ $selection == "5" ]; then
    reminder $firstNumber $secondNumber
elif [ $selection == "6" ]; then
    aPlusBWholeSquare $firstNumber $secondNumber
elif [ $selection == "7" ]; then
    aMinusBWholeSquare $firstNumber $secondNumber
fi
