#!/bin/bash

output=$($SCRIPT_NAME -t $COMMAND 1,2-4,-5,6-)
expected="$COMMAND tests/cody-tests/1 tests/cody-tests/2 tests/cody-tests/3 tests/cody-tests/4 tests/cody-tests/5 tests/cody-tests/6 tests/cody-tests/7 tests/cody-tests/8 tests/cody-tests/9"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
