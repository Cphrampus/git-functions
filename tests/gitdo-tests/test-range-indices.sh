#!/bin/bash

output=$($SCRIPT_NAME -t add 1-3)
expected="git add tests/gitdo-tests/1 tests/gitdo-tests/2 tests/gitdo-tests/3"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"

