#!/bin/bash

LOGFILE="auth_sample.log"  


if [ ! -f "$LOGFILE" ]; then
    echo "Log file not found: $LOGFILE"
    exit 1
fi

echo "Failed SSH login attempts by IP:"
echo "-------------------------------"

# Extract lines with "Failed password", then extract IPs and count them
grep "Failed password" "$LOGFILE" | awk '{ for(i=1;i<=NF;i++) if ($i=="from") print $(i+1); }' | sort | uniq -c | sort -nr

