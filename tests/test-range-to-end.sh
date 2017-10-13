#!/bin/bash

output=$($SCRIPT_NAME -t $COMMAND 8-$)
expected="$([[ $PRE_COMMAND ]] && echo "$PRE_COMMAND ")$COMMAND 8 9"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
