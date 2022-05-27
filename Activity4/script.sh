#!/bin/sh
# Author : Jad H

# Only allow good pass with int 8 or more char uppercase and lowercase letters
echo "Choose a password:"
while [ true ]
do
    read LINES
    if [[ "$LINES" =~ [0-9] ]] && [[ "$LINES" =~ [a-z] ]] && [[ "$LINES" =~ [A-Z] ]] && [[ ${#LINES} > 7 ]]
    then
        break
    fi
    echo "Re-enter password (must have 8+ characters, contain numbers and letters, lowercase and uppercase letters):"
done
