#!/bin/bash

LOGCOMMAND="tag -a -m \"last push\" push"
COMMAND="push"

#add a tag to the log to indicate the last pushed commit
$SOURCE_CONTROL $LOGCOMMAND

#push the current HEAD
$SOURCE_CONTROL $COMMAND
