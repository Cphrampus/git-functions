#!/bin/bash

output=$($SCRIPT_NAME -t add 1,2-4,-5,6-)
expected="git add tests/gitdo-tests/1 tests/gitdo-tests/2 tests/gitdo-tests/3 tests/gitdo-tests/4 tests/gitdo-tests/5 tests/gitdo-tests/6 tests/gitdo-tests/7 tests/gitdo-tests/8 tests/gitdo-tests/9"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
