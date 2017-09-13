#!/bin/bash

output=$($SCRIPT_NAME -t git add 8-$)
expected="git add tests/8 tests/9"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"