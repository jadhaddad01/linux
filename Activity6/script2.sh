#!/bin/sh
# Author : Jad H

#!/bin/sh
# Author : Jad H

if [[ $# != 2 ]] || ! [[ "$1" =~ ^[0-9]+$ ]] || ! [[ "$2" =~ ^[0-9]+$ ]]
then
    echo "Please input 2 numbers as parameters"
    exit 1
fi

# True False a bigger and difference
if [[ $1 > $2 ]]
then
    echo "a is bigger than b by "$(($1-$2))
else
    echo "a is not bigger than b, which is bigger than a by "$(($1-$2))
fi