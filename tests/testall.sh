#!/bin/bash

for folder in *-tests
do
	echo "$folder:"
	cd $folder || exit
	./testall.sh
	cd ..
done
