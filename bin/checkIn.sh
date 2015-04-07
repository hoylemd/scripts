#!/bin/bash

if [ -a "Makefile" ]; then
  make clean
fi

git add -i
git commit

