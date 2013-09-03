#/bin/bash

# set up the default connection stuff
USERNAME=sabretooth
PASSWORD=test
DATABASE=sabretooth

# config file
CONFIG=.mysqlrc

if [ ! -e $CONFIG ]
then
    echo "USERNAME="$USERNAME >> $CONFIG
    echo "PASSWORD="$PASSWORD >> $CONFIG
    echo "DATABASE="$DATABASE >> $CONFIG
else
    source $CONFIG
fi

# grab the query file
if [ -z $1 ]
then
    INPUT=query.sql
else
    INPUT=$1
fi

# make sure the file exists
if [ ! -e $INPUT ]
then
	touch $INPUT
fi

cat $INPUT | mysql -u$USERNAME -p$PASSWORD $DATABASE > .output
