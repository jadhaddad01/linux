#!/bin/sh
# Author : Jad H

# total matches
TOTAL=0

DATE=`date +'%Y%m%d'`

# temporary file
touch tmp

# remove today winning
if test -f win.$DATE
then
    rm win.$DATE
fi

touch win.$DATE
FILE=win.$DATE


# if random number is in the file then we add to the total
addTotal(){
    if [[ $(grep -w $1 $FILE) ]]
    then
        TOTAL=$(($TOTAL+1))
    fi
}

# chose random numbers echo to console and file
randNum(){
    while true
    do
        RAND=$((1 + $RANDOM%$1))
        if ! [[ $(grep -w $RAND $FILE) ]]
        then
            echo $RAND >> $FILE
            echo $RAND
            break
        fi
    done
}

# user lottery
userRandLottery(){
    while true
    do
        RAND=$((1 + $RANDOM%$1))
        if ! [[ $(grep -w $RAND tmp) ]]
        then
            echo $RAND >> tmp
            echo $RAND
            break
        fi
    done
}

# start the lottery
echo The winning lottery is:
# 1-50
for i in {1..5}
do
    randNum 50
done

# 1-10
randNum 10

echo Your lottery numbers are
for i in {1..5}
do
    userRandLottery 50
    # RAND=$((1 + $RANDOM%50))
    # echo $RAND

    addTotal $RAND
done

userRandLottery 10
# RAND=$((1 + $RANDOM%10))
# echo $RAND

addTotal $RAND

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

# delete tmp file
rm tmp