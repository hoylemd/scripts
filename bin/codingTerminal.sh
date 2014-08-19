#!/bin/bash
COMMAND="vim"
COMMIT_TEMPLATE0="see #NNNNNN short description"
#COMMIT_TEMPLATE1="hours worked: 1"
COMMIT_TEMPLATE2="changes"

# set up the commit file
COMMIT_FILE=$COMMIT_MESSAGE_FILE
if [ ! -e $COMMIT_FILE ]
then
    echo $COMMIT_TEMPLATE0 >> $COMMIT_FILE
    echo "" >> $COMMIT_FILE
	#echo $COMMIT_TEMPLATE1 >> $COMMIT_FILE
    #echo "" >> $COMMIT_FILE
	echo $COMMIT_TEMPLATE2 >> $COMMIT_FILE
fi

SCRIPT=~/.vim/codingEnvironment.vim
$COMMAND -s $SCRIPT
