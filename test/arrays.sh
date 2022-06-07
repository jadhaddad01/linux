#!/bin/sh 

array=( apple bat cat dog elephant frog ) 

echo print first element 
echo ${array[0]} 
echo ${array:0} 

echo display all elements 
echo ${array[@]} 
echo ${array[@]:0} 

echo display all elements except first one 
echo ${array[@]:1} 

echo display elements in a range 
echo ${array[@]:1:4} 

echo length of first element 
echo ${#array[0]} 
echo ${#array} 

echo number of elements 
echo ${#array[*]} 
echo ${#array[@]} 

echo replacing substring 
echo ${array[@]//a/A} 

echo elements loop
for i in ${array[@]}
do
    echo $i
done