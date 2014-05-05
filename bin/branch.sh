#!/bin/bash

CHECKOUT="checkout -b"

if [ -z $1 ]
then
	$SOURCE_CONTROL $CHECKOUT master
else
	$SOURCE_CONTROL $CHECKOUT $1
fi

