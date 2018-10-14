#!/bin/bash

output=$($SCRIPT_NAME -t $COMMAND 1,2)
expected="$([[ $PRE_COMMAND ]] && echo "$PRE_COMMAND ")$COMMAND 1 2"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
