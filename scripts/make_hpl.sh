#!/bin/bash

. CONFIG

version=2.3
package=hpl

rm -rf ${package}-${version}
rm -rf ${WORKDIR}/${package}-${version}
wget https://www.netlib.org/benchmark/hpl/${package}-${version}.tar.gz -O ${DOWNLOADS}/${package}-${version}.tar.gz

cd ${WORKDIR}
tar xfz ${DOWNLOADS}/${package}-${version}.tar.gz
cd ${package}-${version}

cp ${SCRIPTSDIR}/../configs/Make.rpi4-mpich .
make arch=rpi4-mpich -j 3 clean_arch
make arch=rpi4-mpich -j 3 install 
