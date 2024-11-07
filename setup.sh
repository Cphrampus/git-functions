#!/bin/bash

for i in *
do
	if [[ "$i" =~ "setup.sh" || "$i" =~ test.* || "$i" =~ "README.md" ]]
	then
		continue
	fi
	# was $PWD:h, but that is a zsh path modifier
	ln -s $PWD/$i $(dirname $PWD)/$i
done
