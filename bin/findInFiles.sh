#!/bin/bash

COMMAND="grep"

echo ""$@""

$COMMAND -r -n ""$@"" * > $VIM_OUTPUT_FILE
