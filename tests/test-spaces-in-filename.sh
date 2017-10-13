#!/bin/bash

touch "this that"

output=$($SCRIPT_NAME -t $COMMAND -1)
expected="$([[ $PRE_COMMAND ]] && echo "$PRE_COMMAND ")$COMMAND \"this that\""

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"

rm "this that"
