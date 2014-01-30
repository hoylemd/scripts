#!/bin/bash

COMMAND="blame"

if [ ! -e $VIM_OUTPUT_FILE ]
then
	touch $VIM_OUTPUT_FILE
fi

if [ -z $1 ]
then
	echo "Please supply a file to blame"
else
	$SOURCE_CONTROL $COMMAND $1 | python ~/py/blame.py > $VIM_OUTPUT_FILE
fi

