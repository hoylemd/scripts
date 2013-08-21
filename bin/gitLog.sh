#!/bin/bash

COMMAND="log --graph --decorate --oneline --all"

if [ ! -e $VIM_OUTPUT_FILE ]
then
	touch $VIM_OUTPUT_FILE
fi

$SOURCE_CONTROL $COMMAND > $VIM_OUTPUT_FILE
