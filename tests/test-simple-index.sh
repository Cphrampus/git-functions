#!/bin/bash

output=$($SCRIPT_NAME -t add 1)
expected="git add tests/1"

echo $output
echo $expected

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
