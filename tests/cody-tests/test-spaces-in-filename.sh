#!/bin/bash

touch "this that"

output=$($SCRIPT_NAME -t git add -1)
expected="git add \"tests/cody-test/this that\""

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"

rm "this that"
