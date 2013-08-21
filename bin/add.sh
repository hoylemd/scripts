#!/bin/bash

COMMAND="add"

if [ -z $1 ]
then
	echo "Please supply a file to add"
else
	$SOURCE_CONTROL $COMMAND $1
fi
