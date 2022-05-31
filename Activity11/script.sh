#!/bin/sh
# Author : Jad H

NUMS=`cat num.txt`

echo Original:
echo $NUMS

echo Reversed and Duplicates Removed:
# REVERSE
REV=$(perl -w -e 'print join(" ", reverse @ARGV),"\n";' $NUMS)
# REMOVE DUPLICATES - tr space to newlines - awk print nonduplicates - tr newline to space
FINAL=$(echo $REV | tr ' ' '\n' | awk '!x[$0]++' | tr '\n' ' ')
# print
echo $FINAL