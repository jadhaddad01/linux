#!/bin/sh
# Author : Jad H
# NOT FINISHED


TOTAL=0

# questions check
if ! [ -f "questions" ]
then
    echo "Questions don't exist"
    exit 1
fi

# read questions
# FLAG=0
# while read p; 
# do
#     # first line
#     if [[ $FLAG == 0 ]]
#     then
#         echo $p
#         FLAG=1
    
#     else
            

#         FLAG=0
#     fi

# done < questions

FLAG=0
for i in `cat questions`
do
    # first line
    if [[ $FLAG == 0 ]]
    then
        echo $i
        FLAG=1
    # second line
    else
        while [ true ]
        do
            read a
            if [[ "$a" =~ [Yy]+$ ]] && [[ ${#a} == 1 ]]
            then
                if [[ $i == "true" ]]
                then
                    TOTAL=$(($TOTAL+1))
                fi
                break
            elif [[ "$a" =~ [Nn]+$ ]] && [[ ${#a} == 1 ]]
            then
                if [[ $i == "false" ]]
                then
                    TOTAL=$(($TOTAL+1))
                fi
                break
            fi
            echo "Re-enter answer (Y / N):"
        done
        FLAG=0
    fi
done

echo $TOTAL