#!/bin/bash

COMMAND="log --pretty=format:%h%x09%an%x09%ad%x09%s --all --decorate --graph"

if [ "$1" = "-f" ]
then
	if [ ! -e $VIM_OUTPUT_FILE ]
	then
		touch $VIM_OUTPUT_FILE
	fi
	$SOURCE_CONTROL $COMMAND > $VIM_OUTPUT_FILE
else
	$SOURCE_CONTROL $COMMAND
fi

