#!/bin/bash

output=$($SCRIPT_NAME -t git add 7--2)
expected="git add 7 8"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
