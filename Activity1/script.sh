#!/bin/sh
# Author : Jad H

echo $USER
echo `date +'%Y/%m/%d'`
echo `date +'%H:%M:%S'`
echo `pwd`
# get word count then awk first number
echo `find *.* | wc | awk '{print$1}'`
# -S Sort by size
echo `ls -S | head -1` 