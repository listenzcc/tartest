#!/bin/sh

for (( i = 0; i < 3; i++ )); do
    #Touch 3 files and inject proper context
    filename=file_$i
    echo $filename
    echo My name is $filename. > $filename
    echo I was born at `date`. >> $filename
    sleep 1
done

dirname=.
for (( i = 0; i < 3; i++ )); do
    #Make 3 levels dir trees
    dirname=$dirname/dir_$i
    echo $dirname
    mkdir $dirname
    filename=file_$i
    echo My name is $filename > $dirname/$filename
    echo I am in dir. >> $dirname/$filename
    echo I was born at `date`. >> $dirname/$filename
    sleep 1
done
