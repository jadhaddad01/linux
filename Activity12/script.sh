#!/bin/sh
# Author : Jad H

if (( $# != 2 ))
then
    echo "Please input 2 files as parameters"
    exit 1
fi

for i in `cat $1`
do
    if [[ $(grep -w $i $2) ]]
    then
        echo "The first common element in both files is $i"
        exit 0
    fi
done

echo "Both files have no common elements"