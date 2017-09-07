#!/bin/bash

if command -v "$SCRIPT_NAME" >/dev/null 2>&1
then
	pass
else
	fail "$SCRIPT_NAME does not exist or is not in PATH!"
fi
