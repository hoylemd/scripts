#!/bin/bash

BRANCH="branch"
CHECKOUT="checkout"

if [ -z $1 ]
then
	$SOURCE_CONTROL $CHECKOUT master
else
    $SOURCE_CONTROL $BRANCH $1
	$SOURCE_CONTROL $CHECKOUT $1
fi

