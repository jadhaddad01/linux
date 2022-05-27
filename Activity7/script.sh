#!/bin/sh
# Author : Jad H
# NOT FINISHED

TOTAL=0

# Only allow Y N as choice
echo "Easy - Is Jad amazing:"
while [ true ]
do
    read a
    if [[ "$a" =~ [Yy]+$ ]] && [[ ${#a} == 1 ]]
    then
        TOTAL=$(($TOTAL+1))
        break
    elif [[ "$a" =~ [Nn]+$ ]] && [[ ${#a} == 1 ]]
    then
        # TOTAL=$(($TOTAL+1))
        break
    fi
    echo "Re-enter answer (Y / N):"
done

echo $TOTAL