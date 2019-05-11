#!/bin/sh

for (( i = 0; i < 100; i++ )); do
    #Repeat 100 times
    tar -xf $1 file_0
done
