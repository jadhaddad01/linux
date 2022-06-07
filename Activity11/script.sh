#!/bin/sh
# Author : Jad H

# check for file
if ! test -f num.txt
then
    echo No num.txt file found
    exit 1
fi

# Take number trim space to newline remove dup sort reverse numerical then trim newline to space
echo `cat num.txt | tr ' ' '\n' | awk '!x[$0]++' | sort -nr | tr '\n' ' '`