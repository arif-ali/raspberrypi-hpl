#!/bin/bash

version=3.3.2
package=mpich

rm -rf ${package}-${version}
rm -rf ${WORKDIR}/${package}-${version}
wget http://www.mpich.org/static/downloads/${version}/${package}-${version}.tar.gz -O ${DOWNLOADS}/${package}-${version}.tar.gz

cd ${WORKDIR}
tar xfz ${DOWNLOADS}/${package}-${version}.tar.gz
cd ${package}-${version}

export CFLAGS=${COMMON_FLAGS}
export FCFLAGS=${COMMON_FLAGS}
export LDFLAGS=${COMMON_FLAGS}

./configure --prefix=/opt/${package}/${version}
make -j 3 
sudo make -j 3 install
