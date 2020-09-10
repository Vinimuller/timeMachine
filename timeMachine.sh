#!/bin/bash

# define standard colors
cGREEN=`tput -Txterm setaf 2`
cWHITE=`tput -Txterm setaf 7`
cRESET=`tput -Txterm sgr0`

# Print menu title
printTitle()
{
	echo -e "${cGREEN}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
	echo "$1"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo -e ${cWHITE}
}

tickStart=`date '+%d/%m/%Y %H:%M:%S'`
# Main loop
while true
do
    clear
    printTitle "    T I M E - M A C H I N E "
    echo -e "You've been working since: \n\t$tickStart"
    printf "\nTime elapsed: %02d:%02d:%02d" "$(($SECONDS/60/60))" "$(($SECONDS/60))" "$(($SECONDS%60))"
    sleep 1
done