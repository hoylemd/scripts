#!/bin/bash
COMMAND="vim"
COMMIT_TEMPLATE0="short description"
COMMIT_TEMPLATE1="bug #BUG_ID: COMMENT"
COMMIT_TEMPLATE2="work_time: HOURS"

# set up the commit file
COMMIT_FILE=$COMMIT_MESSAGE_FILE
if [ ! -e $COMMIT_FILE ]
then
    echo $COMMIT_TEMPLATE0 >> $COMMIT_FILE
    echo "" >> $COMMIT_FILE
	echo $COMMIT_TEMPLATE1 >> $COMMIT_FILE
	echo $COMMIT_TEMPLATE2 >> $COMMIT_FILE
fi

SCRIPT=~/.vim/codingEnvironment.vim
$COMMAND -s $SCRIPT
