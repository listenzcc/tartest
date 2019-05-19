#!/bin/sh

########################################################
#  Make project folder which contains necessary files  #
########################################################

pname=$1
pname="${pname/ /\ }"
echo "#-> Project name is $pname"
mkdir "$pname"

mdname=$pname/README.md
touch "$mdname"
echo "# Project: $pname" >> "$mdname"
echo "## Folder build at `date`" >> "$mdname"
echo "## Comments:" >> "$mdname"

