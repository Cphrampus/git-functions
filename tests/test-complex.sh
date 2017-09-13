#!/bin/bash

output=$($SCRIPT_NAME -t add 1,2-4,-5,6-)
expected="git add tests/1 tests/2 tests/3 tests/4 tests/5 tests/6 tests/7 tests/8 tests/9"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
