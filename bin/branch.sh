#!/bin/bash

COMMAND="checkout"

if [ -z $1 ]
then
	$SOURCE_CONTROL $COMMAND $1
else
	$SOURCE_CONTROL $COMMAND master
fi

