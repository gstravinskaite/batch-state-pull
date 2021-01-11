#!/usr/bin/bash

NOFORMAT='\033[0m'
YELLOW='\033[0;33m'
BOLD='\033[1m'

# LIST - a simple .txt list of the folders you want to plan

LIST=$1

for FILE in $(cat $LIST); do 
    printf "\n%bPlanning $FILE%b\n" "${YELLOW}${BOLD}" "${NOFORMAT}"
    cd $FILE
    yes yes | terragrunt plan
done
