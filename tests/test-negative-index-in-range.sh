#!/bin/bash

output=$($SCRIPT_NAME -t $COMMAND 7--2)
expected="$([[ $PRE_COMMAND ]] && echo "$PRE_COMMAND ")$COMMAND 7 8"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
