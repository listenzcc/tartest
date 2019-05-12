#!/bin/sh

mkdir tar_packages

pkg_tar=tar_packages/package.tar

#########################
#  no compress example  #
#########################

if [[ -f $pkg_tar ]]; then
    #Delete package.tar if it exists
    rm $pkg_tar
fi
tar -cvf $pkg_tar dir_0 file_*

#########################
#  compress using gzip  #
#########################

if [[ -f $pkg_tar.gz ]]; then
    #Delete package.tar.gz if it exists
    rm $pkg_tar.gz
fi
tar -czvf $pkg_tar.gz dir_0 file_*

##########################
#  compress using bzip2  #
##########################

if [[ -f $pkg_tar.bz2 ]]; then
    #Delete package.tar.bz2 if it exists
    rm $pkg_tar.bz2
fi
# compress using bzip2
tar -cjvf $pkg_tar.bz2 dir_0 file_*
