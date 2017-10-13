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

init

for i in gitdo,add cody,"git add"
do
	echo "Testing $folder"
	OLDIFS=$IFS
	IFS=',' read folder command <<< "${i}"
	IFS=$OLDIFS
	export SCRIPT_NAME=$folder
	export COMMAND=$command

	# get the base for tests
	source ./tests/test_base.sh

	# run each test
	for test in tests/test-*
	do
		echo "$test"
		source ./"$test"
	done
done
clean_up

# print passing percentage
print_stats
