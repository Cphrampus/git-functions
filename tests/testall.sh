#!/bin/bash

for folder in *-tests
do
	echo $folder
	cd $folder
	./testall.sh
	cd ..
done
