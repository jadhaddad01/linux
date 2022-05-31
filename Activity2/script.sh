#!/bin/sh
# Author : Jad H

DATE=`date +'%Y%m%d'`

cd files
for i in `find *.*`
do
    mv $i $i.$DATE
done