#!/bin/sh
# Author : Jad H

# Only allow integer numbers as choice
echo "Enter number:"
while [ true ]
do
    read LINES
    if [[ "$LINES" =~ ^[0-9]+$ ]]
    then
        break
    fi
    echo "Re-enter number (only int numbers allowed):"
done

echo $LINES | rev