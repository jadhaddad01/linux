#!/bin/sh
# Author : Jad H

if (( $# != 1 ))
then
    echo "Please input 1 file as parameter"
    exit 1
fi

# test -f does this file exist
if test -f "$1"
then
    echo "ERROR: File already exists."
    exit 1
else
    touch $1
    echo $1 " has been created."
fi