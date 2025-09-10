#!/bin/bash
# Day 5: System Info Script using Functions
# Collects system information and saves to a report

OUTPUT="system_report.log"

get_date() {
  echo "Date: $(date)"
}

get_uptime() {
  echo "Uptime: $(uptime -p)"
}

get_users() {
  echo "Logged in users: $(who | wc -l)"
}

get_disk() {
  echo "Disk Usage:"
  df -h | grep '^/dev/'
}

# Main
{
  echo "===== SYSTEM REPORT ====="
  get_date
  get_uptime
  get_users
  get_disk
} > $OUTPUT

echo "Report saved to $OUTPUT"
