#!/bin/bash

COMMAND="status -uno"

if [ "$1" = "-f" ]
then
    if [ ! -e $VIM_OUTPUT_FILE ]
    then
        touch $VIM_OUTPUT_FILE
    fi
    $SOURCE_CONTROL $COMMAND > $VIM_OUTPUT_FILE
else
    $SOURCE_CONTROL $COMMAND
