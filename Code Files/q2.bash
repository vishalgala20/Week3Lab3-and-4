#!/bin/bash

# Script to monitor disk usage of '/' and alert if usage exceeds 80%

# a. Get the usage percentage of /
USAGE_PERCENT=$(df / | tail -1 | tr -s ' ' | cut -d ' ' -f 5 | tr -d '%')

#Here’s the breakdown:
#df / → shows disk space usage for the root (/) filesystem.
#tail -1 → takes the last line of the output (the actual usage line, skipping headers).
#tr -s ' ' → squeezes multiple spaces into a single space (makes column splitting easier).
#cut -d ' ' -f 5 → extracts the 5th field (which is the usage percentage column, like 42%).
#tr -d '%' → removes the % sign, leaving just the number (e.g., 42).


THRESHOLD=80

#TODO: b. Check if usage exceeds 80%

