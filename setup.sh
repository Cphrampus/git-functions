#!/bin/bash

# todo add flag for verbose to hide output behind

for i in *
do
	# this works off of the assumption that the desired scripts do not have a .sh or .bat extension
	if [[ "$i" =~ .*\.(sh|bat) || "$i" =~ test.* || "$i" =~ "README.md" ]]
	then
		continue
	fi
	# was $PWD:h, but that is a zsh path modifier
	(ln -s $PWD/$i $(dirname $PWD)/$i > /dev/null 2>&1 && echo "linked $i") || (
		# check if $i is a symlink
		echo "Failed to link $i: $([[ -L $(dirname $PWD)/$i ]] && echo "Symlink already exists" || echo "Unknown error")"
	)
done
