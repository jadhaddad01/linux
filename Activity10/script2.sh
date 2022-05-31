#!/bin/sh
# Author : Jad H

if [[ $# != 2 ]] || ! [[ "$2" =~ ^[0-9]+$ ]]
then
    echo "Please input 1 file as first parameter and an integer as the second"
    exit 1
fi

# test -f does this file exist
if test -f "$1"
then
    echo "ERROR: File already exists."
    exit 1
else
    touch $1
    echo $1 " has been created."

    # create random numbers in given lines
    for i in `seq 1 $2`
    do
        echo $(($RANDOM)) >> $1
    done
fi