#!/bin/bash

COMMAND="add"

if [ ! -e $VIM_OUTPUT_FILE ]
then
	touch $VIM_OUTPUT_FILE
fi

if [ -z $1 ]
then
	echo "Please supply a file to add"
else
	$SOURCE_CONTROL $COMMAND $1 > $VIM_OUTPUT_FILE
fi
