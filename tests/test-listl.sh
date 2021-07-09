#!/bin/bash

output=$(git listl)
expected="$(for i in {1..9}; do echo -e "$i\t$i"; done)"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
