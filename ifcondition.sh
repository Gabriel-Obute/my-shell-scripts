#!/bin/bash

read -p "Enter a Number: '" NUM
echo

if [ $NUM -gt 100 ]
then
echo “your number is greater than 100”
else
echo “The Number you entered is less than 100”
fi

