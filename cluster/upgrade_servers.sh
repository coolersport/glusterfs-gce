#!/bin/bash
# Upgrade Ubuntu 

# Get settings from the file
source settings

# 
for (( i=1; i<=${COUNT}; i++ ))
do
  echo "Run upgrade of packages on ${SERVER}-${i} server ..."
  gcloud compute ssh --zone ${REGION}-${ZONES[$i-1]} ${SERVER}-${i} --command "sudo yum -y update && sudo yum -y upgrade"
  echo " "
done
echo " "
