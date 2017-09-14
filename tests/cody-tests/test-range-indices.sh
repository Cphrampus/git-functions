#!/bin/bash

output=$($SCRIPT_NAME -t git add 1-3)
expected="git add tests/cody-tests/1 tests/cody-tests/2 tests/cody-tests/3"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
