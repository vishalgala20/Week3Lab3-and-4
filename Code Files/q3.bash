#!/bin/bash

NMAP_FILE="nmap_output.txt"

echo "Analyzing Nmap results in $NMAP_FILE"
echo ""

# TODO: Task 1: List all unique open ports
echo "Unique open ports found:"

# Use Linux tools here

echo ""

# TODO: Task 2: Top 5 most frequently open ports
echo "Top 5 most common open ports:"

# Use Linux tools here

echo ""

# List hosts with SSH (port 22) open
echo "Hosts running SSH (port 22):"
CURRENT_IP=""
while IFS= read -r line; do
    if [[ $line == Nmap\ scan\ report* ]]; then
        CURRENT_IP=$(echo "$line" | awk '{print $5}')
    elif [[ $line == 22/tcp*open* ]]; then
        echo "$CURRENT_IP"
    fi
done < "$NMAP_FILE"

