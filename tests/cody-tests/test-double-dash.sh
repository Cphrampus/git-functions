#!/bin/bash

output=$($SCRIPT_NAME -t git add -- 1,2)
expected="git add -- tests/gitdo-tests/1 tests/gitdo-tests/2"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
