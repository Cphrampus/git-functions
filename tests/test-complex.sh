#!/bin/bash

output=$($SCRIPT_NAME -t $COMMAND 1,2-4,-5,6-)
expected="$COMMAND 1 2 3 4 5 6 7 8 9"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
