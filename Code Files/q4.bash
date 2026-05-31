#!/bin/bash

# TODO: Define the file paths for hosts, report, and log below

HOSTS_FILE=
REPORT_FILE=
LOG_FILE=
TIMESTAMP=


# TODO: If the report file does not exist, create it and add the CSV header:
#   Timestamp → The date and time when the check was made
#   Host      → The hostname or IP address being checked
#   Reachable → Whether the host was reachable (e.g., Yes/No or 1/0)





UNREACHABLE_COUNT=0

#TODO: complete the while loop below so for each host, the script ping it and report weather it is reachable or unreachable. 


while                            ; do

    # TODO: Skip empty lines or comments
    
    

    # Ping 3 times and collect output
    PING_OUTPUT=$(ping -c 3 -W 2 "$HOST" 2>/dev/null)

    # TODO: Check if ping was successful by searching for '0% packet loss'
    
    

    # TODO: Append result to CSV
    
    

done < 


# TODO: Log alert if more than 2 hosts unreachable





