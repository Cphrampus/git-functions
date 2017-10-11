#!/bin/bash

passed=0
total=0

for folder in *-tests
do
	echo "$folder:"
	cd $folder || exit
	scores=($(./testall.sh | tee >(tail -n 1) >&2 | sed 's/\([0-9]*\) of \([0-9]*\).*/\1 \2/'))
	((passed+=scores[0]))
	((total+=scores[1]))
	cd ..
done

echo
printf "$passed of $total tests (%s%%)\n" $(echo "scale=1;$passed*100/$total" | bc)
