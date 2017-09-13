#!/bin/bash

# define constants for soloring the output

ESC="\033["

# Foreground colors
BLACK="30"
RED="31"
GREEN="32"
YELLOW="33"
BLUE="34"
MAGENTA="35"
CYAN="36"
WHITE="37"

# Background colors
BACK_BLACK="40"
BACK_RED="41"
BACK_GREEN="42"
BACK_YELLOW="43"
BACK_BLUE="44"
BACK_MAGENTA="45"
BACK_CYAN="46"
BACK_WHITE="47"

# Attributes
NONE=$ESC"0m"
BOLD="1"
ITALIC="3"
UNDERSCORE="4"
BLINK="5"
REVERSE="7"
CONCEALED="8"

END="m"
SEP=";"

PASS_COLOR="$ESC$GREEN$SEP$BOLD$END"
FAIL_COLOR="$ESC$RED$SEP$BOLD$END"

# define count for number passed/ and total
NUM_PASSED=0
NUM_TOTAL=0
export SCRIPT_NAME=gitdo

# define the functions that we can use in the other tests
# print colored pass message
pass() {
	((NUM_PASSED++))
	echo -e "$PASS_COLOR pass $NONE"
	((NUM_TOTAL++))
}

# print colored failure message
fail() {
	echo -e "$FAIL_COLOR fail $([[ $1 ]] && echo ": $*")$NONE"
	((NUM_TOTAL++))
}

# check output, increment counts, and print appropriate message
compare() {
	[[ $# -ne 2 ]] && 1>&2 echo "compare requires two arguments!" && exit
	if [[ "$1" = "$2" ]]
	then
		pass
	else
		fail "'$1' does not match '$2'"
	fi
}

print_stats() {
	[[ $NUM_TOTAL = 0 ]] && echo "zero tests run!" && exit
	printf "$NUM_PASSED of $NUM_TOTAL tests (%s%%)" $(echo "scale=1;$NUM_PASSED*100/$NUM_TOTAL" | bc)
}
