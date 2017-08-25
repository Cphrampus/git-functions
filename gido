#!/bin/bash

if [[ $# -lt 2 ]]
then
	echo "usage: $0 command file [file]"
	exit
fi

len=$(git status -s | wc -l)

command=$1
shift

items=$(echo "$@" |
# deal with csv
tr ',' ' ' |
tr ' ' '\n' |
# deal with ranges
sed 's/\(\d\)-\(\d\)/\1,\2/' |
# negative indices
awk -v len="$len" '{print ($1 < 0) ? (len + $1) : $1}'
)

for i in ${items/-/,}
do
	indices="$indices${i}p;"
done

git $command $(git status -s | cut -c4- | sed -n "$indices")
