#!/bin/bash

output=$($SCRIPT_NAME -t git add 7--2)
expected="git add tests/cody-tests/7 tests/cody-tests/8"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
