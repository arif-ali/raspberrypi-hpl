#!/bin/bash

. CONFIG

sudo systemctl stop ${SERVICES}

cd ${SCRIPTSDIR}/../configs
${WORKDIR}/hpl-2.3/bin/rpi4-mpich/xhpl
