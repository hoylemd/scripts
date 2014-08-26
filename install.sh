#!/bin/bash

# change this to 'big' for 3 vim columns
SCREEN_SIZE=big
BIN_DIRECTORY=bin
VIM_DIRECTORY=~/.vim
PY_DIRECTORY=py
LINK_DIRECTORY=~/bin
PY_LINK_DIRECTORY=~/py

# script installer/updater
# params: source, destination
install () {

    #remove the old version if ti exists
    if [ -e $2 ]; then
        rm $2
    fi

    ln -f $1 $2

    return 0
}

if [ ! -d $LINK_DIRECTORY ]; then
	mkdir $LINK_DIRECTORY
else
    rm $LINK_DIRECTORY/*
fi

install $BIN_DIRECTORY/add.sh $LINK_DIRECTORY/a
install  $BIN_DIRECTORY/branch.sh $LINK_DIRECTORY/b
install  $BIN_DIRECTORY/blame.sh $LINK_DIRECTORY/bl
install  $BIN_DIRECTORY/checkIn.sh $LINK_DIRECTORY/ci
install  $BIN_DIRECTORY/codingTerminal.sh $LINK_DIRECTORY/ct
install  $BIN_DIRECTORY/diffOnFile.sh $LINK_DIRECTORY/d
install  $BIN_DIRECTORY/findInFiles.sh $LINK_DIRECTORY/f
install  $BIN_DIRECTORY/gitLog.sh $LINK_DIRECTORY/log
install  $BIN_DIRECTORY/gitStatus.sh $LINK_DIRECTORY/s
install  $BIN_DIRECTORY/gitPush.sh $LINK_DIRECTORY/p
install  $BIN_DIRECTORY/graph.sh $LINK_DIRECTORY/graph
install  $BIN_DIRECTORY/rainbow.sh $LINK_DIRECTORY/rainbow
install  $BIN_DIRECTORY/mysql.sh $LINK_DIRECTORY/sql
install  $BIN_DIRECTORY/jslintOnFile.sh $LINK_DIRECTORY/l

if [ ! -d $PY_LINK_DIRECTORY ]; then
	mkdir $PY_LINK_DIRECTORY
else
    rm $PY_LINK_DIRECTORY/*
fi

install  $PY_DIRECTORY/formatSqlOutput.py $PY_LINK_DIRECTORY/fsql.py
install  $PY_DIRECTORY/blame.py $PY_LINK_DIRECTORY/blame.py

if [ ! -d $VIM_DIRECTORY ]; then
	mkdir $VIM_DIRECTORY
fi

if [ "$SCREEN_SIZE" = "big" ]; then
    install  vim/codingEnvironmentBig.vim $VIM_DIRECTORY/codingEnvironment.vim
else
    install  vim/codingEnvironment.vim $VIM_DIRECTORY/codingEnvironment.vim
fi
