#!/bin/bash
# Day 3: Website Uptime Checker
# Asks for a website URL, pings it, and reports status

echo "Enter a website URL (e.g., google.com):"
read WEBSITE

ping -c 2 $WEBSITE > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "✅ $WEBSITE is UP!"
else
  echo "❌ $WEBSITE is DOWN!"
fi
