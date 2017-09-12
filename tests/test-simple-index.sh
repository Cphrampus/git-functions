#!/bin/bash

# save any existing changes
git stash
touch 1

output=$($SCRIPT_NAME -t add 1)
expected="git add tests/1"

if [ "$output" = "$expected" ]
then
	pass
else
	fail "$output does not equal $expected"
fi

rm 1
git stash pop
