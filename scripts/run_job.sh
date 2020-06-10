#!/bin/bash

. CONFIG

mkdir -p ${RESULTSDIR}
TIMESTAMP=$(date +%s)

# stop unnecessary services
sudo systemctl stop ${SERVICES}

# Unmount all the snap loop devices
for mount in $(df -h | grep loop.*snap | awk '{print $6}'); do sudo umount $mount; done

cd ${SCRIPTSDIR}/../configs

COMMAND="${WORKDIR}/hpl-2.3/bin/rpi4-mpich/xhpl"

if [ ${WRITE_OUT_FILE} -eq 1 ] ; then
  ${COMMAND} | tee -a ${RESULTSDIR}/HPL.out.${TIMESTAMP}

  echo
  echo Results ...
  echo

  grep WR.*17 ${RESULTSDIR}/HPL.out.${TIMESTAMP}

else
  ${COMMAND}
fi

