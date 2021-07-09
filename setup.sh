#!/bin/bash

for i in *
do
	if [[ "$i" =~ "setup.sh" || "$i" =~ test.* || "$i" =~ "README.md" ]]
	then
		continue
	fi
	ln -s $PWD/$i ${PWD:h}/$i
done
