#!/usr/bin/bash

NOFORMAT='\033[0m'
YELLOW='\033[0;33m'
BOLD='\033[1m'

# ENV - environment name in repo
# LIST - a simple .txt list of the repos you want to pull state from
# NEW_FOLDER - a new folder in ENV folder where the state is moved into

ENV=$1
LIST=$2
STATE_FILE="/terraform.tfstate"
NEW_FOLDER="/apps-infra"

for FILE in $LIST; do 
    printf "\n%bPulling the state from $FILE%b\n" "${YELLOW}${BOLD}" "${NOFORMAT}"
    cd $FILE
    NEW_REPO=$(echo $FILE | sed "s!$ENV!$ENV$NEW_FOLDER!g")
    printf "\n%bMoving the state to $NEW_REPO$STATE_FILE%b\n" "${YELLOW}${BOLD}" "${NOFORMAT}"
    terragrunt state pull > "$NEW_REPO$STATE_FILE"
done
