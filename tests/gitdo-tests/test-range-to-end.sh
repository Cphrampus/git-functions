#!/bin/bash

output=$($SCRIPT_NAME -t add 8-$)
expected="git add tests/gitdo-tests/8 tests/gitdo-tests/9"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"

