#!/bin/bash

cd `dirname $0`
echo "workdir: `pwd`"

tmp='.env'
echo "load values from $tmp.."
source $tmp
if [ $? -ne 0 ]
then
    echo "ERROR: unable to load $tmp, exit"
    exit 1
fi

#------------ localhost data dirs -------------------------------------------
for dir in $FILE_STORAGE $POSTGRES_PATH
do
    if [ ! -d $dir ]
    then
        echo "create dir $dir"
        mkdir -p $dir
    fi
done
#------------ END localhost data dirs -------------------------------------------

docker-compose config > docker-compose-config.yml
echo 'Setup containers..'
docker-compose up -d
