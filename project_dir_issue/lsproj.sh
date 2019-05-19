#!/bin/sh

#####################################
#  List project folders in the dir  #
#####################################

find -type d | awk -F ':' '{print "\""$0"\""}'

dirs=`find -type d | awk -F ':' '{print "\""$0"\""}'`
for i in $dirs; do
    #statements
    echo "$i"
done


