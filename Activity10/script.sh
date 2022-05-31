#!/bin/sh
# Author : Jad H

echo "Enter File name:"
read FILE

# test -f does this file exist
if test -f "$FILE"
then
    echo "ERROR: File already exists."
    exit 1
else
    # create file
    touch $FILE
    echo $FILE " has been created."

    # Only allow integer numbers as line choice
    echo "Enter number of lines:"
    while [ true ]
    do
        read LINES
        if [[ "$LINES" =~ ^[0-9]+$ ]]
        then
            break
        fi
        echo "Re-enter number of lines (only int numbers allowed):"
    done

    # create random numbers in given lines
    for i in `seq 1 $LINES`
    do
        echo $(($RANDOM)) >> $FILE
    done
fi