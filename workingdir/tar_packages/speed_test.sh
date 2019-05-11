#!/bin/sh

tar_fname=package.tar
# test on tar file
echo testing untar $tar_fname
time ./untar_repeat.sh $tar_fname

# test on tar.gz file
echo testing untar $tar_fname.gz
time ./untar_repeat.sh $tar_fname.gz
