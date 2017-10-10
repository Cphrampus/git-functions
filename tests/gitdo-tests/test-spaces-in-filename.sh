#!/bin/bash

touch "this that"

output=$($SCRIPT_NAME -t add -1)
expected="git add \"this that\""

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"

rm "this that"
