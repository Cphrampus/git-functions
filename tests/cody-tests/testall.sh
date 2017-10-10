#!/bin/bash

init() {
	# save any existing changes
	git stash -u &> /dev/null
	touch {1..9}
}

clean_up() {
	rm {1..9}
	git stash pop &> /dev/null
}

tests=(
existance
simple-index
multiple-indices
range-indices
range-to-end
range-to-undefined-end
negative-index
out-of-range
complex
spaces-in-filename
)

# get the base for tests
source ./test_base.sh

init

# run each test
for test in "${tests[@]}"
do
	echo "$test"
	source ./"test-$test.sh"
done

clean_up

# print passing percentage
print_stats
