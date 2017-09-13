#!/bin/bash

# get the base for tests
source ./test_base.sh

SCRIPT_NAME=gitdo

# run each test
for test in test-*
do
	echo $test
	source ./$test
done

# print passing percentage
print_stats
