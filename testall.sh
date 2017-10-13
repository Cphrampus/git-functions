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

# get the base for tests
source ./tests/test_base.sh

for i in gitdo,git,add cody,,"git add"
do
	OLDIFS=$IFS
	IFS=',' read folder pre_command command <<< "${i}"
	IFS=$OLDIFS

	export SCRIPT_NAME=$folder
	export PRE_COMMAND=$pre_command
	export COMMAND=$command

	echo "Testing $folder"

	# run each test
	for test in tests/test-*
	do
		echo "$test"
		source ./"$test"
	done
	echo
done
clean_up

# print passing percentage
print_stats
