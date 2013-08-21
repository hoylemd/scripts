#!/bin/bash
COMMAND="vim"
COMMIT_TEMPLATE1="bug #BUG_ID: COMMENT"
COMMIT_TEMPLATE2="work_time: HOURS"

# set up the commit file
SVN_COMMIT_FILE=$COMMIT_MESSAGE_FILE"svn"
if [ ! -e $SVN_COMMIT_FILE ]
then
	echo $COMMIT_TEMPLATE1 >> $SVN_COMMIT_FILE
	echo $COMMIT_TEMPLATE2 >> $SVN_COMMIT_FILE
fi

SCRIPT=~/.vim/codingEnvironment.vim
$COMMAND -s $SCRIPT
