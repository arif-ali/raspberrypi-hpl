#!/bin/bash

. CONFIG

version=develop
package=OpenBLAS

rm -rf ${package}-${version}
rm -rf ${WORKDIR}/${package}-${version}
sudo rm -rf /opt/${package}
wget https://github.com/xianyi/OpenBLAS/archive/develop.tar.gz -O ${DOWNLOADS}/${package}-${version}.tar.gz

cd ${WORKDIR}
tar xfz ${DOWNLOADS}/${package}-${version}.tar.gz
cd ${package}-${version}

make -j 3 
sudo make -j 3 install
