#!/bin/bash

# test if command is executable
if command -v "compare" >/dev/null 2>&1
then
	pass
else
	fail "$SCRIPT_NAME does not exist or is not in PATH!"
fi
