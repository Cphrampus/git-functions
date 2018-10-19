#!/bin/bash

output=$(git blistl)
branches=($(git branch | tr '\n*' ' '))
expected="$(for i in {1..${#branches}}; do echo -e "$i\t${branches[$i]}"; done)"

# trim trialing spaces
output=${output%% }

compare "$output" "$expected"
