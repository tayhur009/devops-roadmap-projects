#!/bin/bash
# check_website.sh - Simple uptime checker

URL="https://google.com"
if curl -s --head "$URL" | grep "200 OK" > /dev/null; then
    echo "$(date) - $URL is up" >> website_status.log
else
    echo "$(date) - $URL is down" >> website_status.log
fi
