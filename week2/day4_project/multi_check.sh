#!/bin/bash
# Multi-Website Uptime Monitor

SITES=("google.com" "github.com" "fakewebsite.dev")
LOGFILE="website_status.log"

while true
do
  for SITE in "${SITES[@]}"
  do
    if ping -c 1 $SITE &> /dev/null
    then
      echo "$(date) - ✅ $SITE is UP" >> $LOGFILE
    else
      echo "$(date) - ❌ $SITE is DOWN" >> $LOGFILE
    fi
  done
  sleep 10  # wait 10 seconds before next check
done
