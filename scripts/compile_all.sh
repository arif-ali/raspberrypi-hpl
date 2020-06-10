#!/bin/bash

. CONFIG

mkdir -p ${DOWNLOADS}
mkdir -p ${WORKDIR}

./install_deps.sh
./make_mpich.sh
./make_openblas.sh
./make_hpl.sh
