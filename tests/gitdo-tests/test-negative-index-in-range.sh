#!/bin/bash

output=$($SCRIPT_NAME -t add 7--2)
expected="git add tests/gitdo-tests/7 tests/gitdo-tests/8"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
