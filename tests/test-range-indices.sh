#!/bin/bash

output=$($SCRIPT_NAME -t git add 1-3)
expected="git add tests/1 tests/2 tests/3"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
