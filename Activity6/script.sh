#!/bin/sh
# Author : Jad H

# Only allow integer numbers as choice
echo "Enter number a:"
while [ true ]
do
    read a
    if [[ "$a" =~ ^[0-9]+$ ]]
    then
        break
    fi
    echo "Re-enter number a (only int numbers allowed):"
done

echo "Enter number b:"
while [ true ]
do
    read b
    if [[ "$b" =~ ^[0-9]+$ ]]
    then
        break
    fi
    echo "Re-enter number b (only int numbers allowed):"
done

# True False a bigger and difference
if [[ $a > $b ]]
then
    echo "a is bigger than b by "$(($a-$b))
else
    echo "a is not bigger than b, which is bigger than a by "$(($b-$a))
fi