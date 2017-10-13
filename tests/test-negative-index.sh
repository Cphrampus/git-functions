#!/bin/bash

output=$($SCRIPT_NAME -t git add -1)
expected="git add 9"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"