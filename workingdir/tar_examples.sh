#!/bin/sh

mkdir tar_packages

pkg_tar=tar_packages/package.tar
if [[ -f $pkg_tar ]]; then
    #Delete package.tar if it exists
    rm $pkg_tar
fi
tar -cvf $pkg_tar dir_0 file_*

if [[ -f $pkg_tar.gz ]]; then
    #Delete package.tar if it exists
    rm $pkg_tar.gz
fi

tar -cjvf $pkg_tar.gz dir_0 file_*
