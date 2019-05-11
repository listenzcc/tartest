#!/bin/sh

echo testing untar package.tar
time ./untar_repeat.sh package.tar

echo testing untar package.tar.gz
time ./untar_repeat.sh package.tar.gz
