# git-functions
A, hopefully growing, collection of scripts to help me use git better/easier/more efficently/etc.

## Usage

The script, in general, takes a command, or a series of commands, with the last argument being a comma separated list
of line numbers referring to the files output from git status

To ensure functionality, have this directory added to your path, or the scripts symlinked to a place that is.
This will allow you to use gitdo itself, and the other scripts(git-*).

To use the git-* scripts, as long as they are in your PATH, just type git \<name of script after git-\> \<comma separated line numbers\>,

e.g., git addl 1-3,5,-4,12-
