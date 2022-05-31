#!/bin/sh
# Author : Jad H

DATE=`date +'%Y%m%d'`

# remove today winning
if test -f win.$DATE
then
    rm win.$DATE
fi

touch win.$DATE
FILE=win.$DATE

echo The winning lottery is:
# 1-50
for i in {1..5}
do
    while true
    do
        RAND=$((1 + $RANDOM%50))
        if ! [[ $(grep -w $RAND $FILE) ]]
        then
            echo $RAND >> $FILE
            echo $RAND
            break
        fi
    done
done

# 1-10
while true
do
    RAND=$((1 + $RANDOM%10))
    if ! [[ $(grep -w $RAND $FILE) ]]
    then
        echo $RAND >> $FILE
        echo $RAND
        break
    fi
done

TOTAL=0
echo Your lottery numbers are
for i in {1..5}
do
    RAND=$((1 + $RANDOM%50))
    echo $RAND

    if [[ $(grep -w $RAND $FILE) ]]
    then
        TOTAL=$(($TOTAL+1))
    fi
done

RAND=$((1 + $RANDOM%10))
echo $RAND

if [[ $(grep -w $RAND $FILE) ]]
then
    TOTAL=$(($TOTAL+1))
fi

if [[ $TOTAL == 0 ]]
then
    echo You have no matches. Loser.
elif [[ $TOTAL < 3 ]]
then
    echo You have $TOTAL matches. Not bad.
elif [[ $TOTAL < 6 ]]
then
    echo You have $TOTAL matches. You are lucky.
else
    echo JACKPOT!! ALL 6 are a match! You win 1000000000000$
fi