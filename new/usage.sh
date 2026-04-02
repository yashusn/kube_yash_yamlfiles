#!/bin/bash

threshold=15
usage=$( df -h / | awk 'NR==2 {print $5}' | sed 's/%//' )
if [ $usage -gt $threshold ]; then
    echo "Disk usage is high: $usage%"
else
    echo "Disk is fine: $threshold%"
fi
