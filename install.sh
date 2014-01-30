#!/bin/bash

BIN_DIRECTORY=bin
VIM_DIRECTORY=~/.vim
PY_DIRECTORY=py
LINK_DIRECTORY=~/bin
PY_LINK_DIRECTORY=~/py

if [ ! -d $LINK_DIRECTORY ]; then
	mkdir $LINK_DIRECTORY
else
    rm $LINK_DIRECTORY/*
fi

ln -f  $BIN_DIRECTORY/add.sh $LINK_DIRECTORY/a
ln -f  $BIN_DIRECTORY/branch.sh $LINK_DIRECTORY/b
ln -f  $BIN_DIRECTORY/blame.sh $LINK_DIRECTORY/bl
ln -f  $BIN_DIRECTORY/checkIn.sh $LINK_DIRECTORY/ci
ln -f  $BIN_DIRECTORY/codingTerminal.sh $LINK_DIRECTORY/ct
ln -f  $BIN_DIRECTORY/diffOnFile.sh $LINK_DIRECTORY/d
ln -f  $BIN_DIRECTORY/findInFiles.sh $LINK_DIRECTORY/f
ln -f  $BIN_DIRECTORY/gitLog.sh $LINK_DIRECTORY/log
ln -f  $BIN_DIRECTORY/gitStatus.sh $LINK_DIRECTORY/s
ln -f  $BIN_DIRECTORY/gitPush.sh $LINK_DIRECTORY/p
ln -f  $BIN_DIRECTORY/graph.sh $LINK_DIRECTORY/graph
ln -f  $BIN_DIRECTORY/rainbow.sh $LINK_DIRECTORY/rainbow
ln -f  $BIN_DIRECTORY/mysql.sh $LINK_DIRECTORY/sql


if [ ! -d $PY_LINK_DIRECTORY ]; then
	mkdir $PY_LINK_DIRECTORY
else
    rm $PY_LINK_DIRECTORY/*
fi

ln -f  $PY_DIRECTORY/formatSqlOutput.py $PY_LINK_DIRECTORY/fsql.py
ln -f  $PY_DIRECTORY/blame.py $PY_LINK_DIRECTORY/blame.py

if [ ! -d $VIM_DIRECTORY ]; then
	mkdir $VIM_DIRECTORY
fi

ln -f  vim/codingEnvironment.vim $VIM_DIRECTORY/codingEnvironment.vim
