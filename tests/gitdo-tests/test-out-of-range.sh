#!/bin/bash

output=$($SCRIPT_NAME -t add 10)
expected="10 is out of range! 9 changed files"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
