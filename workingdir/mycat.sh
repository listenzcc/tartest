#!/bin/sh

if [[ ! -f $1 ]]; then
    #If is not file
    echo $1 is not file!
    exit 0
fi
echo --------------------------
echo Filename: $1 reads:
cat $1
echo
