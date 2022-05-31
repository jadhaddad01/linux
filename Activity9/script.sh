#!/bin/sh
# Author : Jad H

echo "Enter File name:"
read FILE

# test -f does this file exist
if test -f "$FILE"
then
    echo "ERROR: File already exists."
    exit 1
else
    touch $FILE
    echo $FILE " has been created."
fi