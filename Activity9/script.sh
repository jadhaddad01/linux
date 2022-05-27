#!/bin/sh
# Author : Jad H

read FILE

# test -f does this file exist
if test -f "$FILE"
then
    echo "ERROR: File already exists"
    exit 1
else
    touch $FILE
fi