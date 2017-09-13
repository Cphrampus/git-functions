#!/bin/bash

init() {
	# save any existing changes
	git stash &> /dev/null
	touch {1..15}
}

clean_up() {
	rm {1..15}
	git stash pop &> /dev/null
}

tests=($(echo test-{existance,simple-index,multiple-indices}.sh))

# get the base for tests
source ./test_base.sh

SCRIPT_NAME=gitdo

init

# run each test
for test in "${tests[@]}"
do
	echo "$test"
	source ./"$test"
done

clean_up

# print passing percentage
print_stats
