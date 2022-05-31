#!/bin/sh
# Author : Jad H

if ! [ -f "1" ] || ! [ -f "2" ]
then
    echo "Files don't exist"
    exit 1
fi

# first file
FLAG=0
echo "Only in file 1:"
for i in `cat 1`
do
    FLAG=0

    # loop second file
    for j in `cat 2`
    do
        if [[ $i == $j ]]
        then
            FLAG=1
            break
        fi
    done

    # echo if no flag
    if [[ $FLAG == 0 ]]
    then
        echo $i
    fi
done

# second file
FLAG=0
echo "Only in file 2:"
for i in `cat 2`
do
    FLAG=0

    # loop second file
    for j in `cat 1`
    do
        if [[ $i == $j ]]
        then
            FLAG=1
            break
        fi
    done

    # echo if no flag
    if [[ $FLAG == 0 ]]
    then
        echo $i
    fi
done