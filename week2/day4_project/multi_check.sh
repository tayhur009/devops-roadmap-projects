#!/bin/bash
# Day 4: Multi-Website Uptime Monitor
# Loops through multiple websites, pings them, logs status with timestamp

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
  echo "Check complete. Sleeping for 10 seconds..."
  sleep 10
done
