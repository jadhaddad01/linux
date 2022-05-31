#!/bin/sh
# Author : Jad H

SUM=0
LEN=0
PROD=1
MAX=0
MIN=0

# enter 5-10 integers
echo "Enter 5 to 10 integers (you can exit after the 5th number by inputting exit):"
for i in {1..5}
do
    while [ true ]
    do
        read num
        if [[ "$num" =~ ^[0-9]+$ ]]
        then
            SUM=$(($SUM+num))
            LEN=$(($LEN+1))
            PROD=$(($PROD*num))

            # max min
            if [[ $MAX < $num ]]
            then
                MAX=$num
            fi
            
            if [[ $i == 1 ]] || [[ $MIN > $num ]]
            then
                MIN=$num
            fi

            break
        fi
        echo "Re-enter number (only int numbers allowed):"
    done
done

for i in {1..5}
do
    while [ true ]
    do
        read num
        if [[ $num == "exit" ]]
        then
            break
        fi
        if [[ "$num" =~ ^[0-9]+$ ]]
        then
            SUM=$(($SUM+num))
            LEN=$(($LEN+1))
            PROD=$(($PROD*num))

            # max min
            if [[ $MAX < $num ]]
            then
                MAX=$num
            fi

            if [[ $MIN > $num ]]
            then
                MIN=$num
            fi

            break
        fi
        echo "Re-enter number (only int numbers allowed):"
    done
    if [[ $num == "exit" ]]
    then
        break
    fi
done

# average
AVE=$(($SUM/$LEN))


echo "prod:" $PROD
echo "average:" $AVE
echo "sum:" $SUM
echo "max:" $MAX
echo "min:" $MIN