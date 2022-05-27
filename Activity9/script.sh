#!/bin/sh
# Author : Jad H

read FILE

# test -f does this file exist
if test -f "$FILE"
then
    echo ERROR
    exit 1
else
    touch $FILE
fi