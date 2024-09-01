#!/usr/bin/env bash

echo_with_prompt () {
	PROMPT="${PROMPT:-'[ SPDotFiles ]'}"
	echo "$PROMPT $@"
}

execute_func_with_prompt() {
	echo_with_prompt "This utility will $2"
	echo_with_prompt "Proceed? (y/n)"
	read resp
	
	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
		"$1" || return 2
		echo_with_prompt "$2 complete"
	else 
		echo_with_prompt "$2 cancelled by user"
		return 1
	fi
}
