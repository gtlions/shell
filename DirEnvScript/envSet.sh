#!/bin/bash
export DEVROOTBASE=/opt/sdk/google
CURRENTPATH=$(cd `dirname $0`; pwd)
export DEVBUILDDIR=~/NoInTime/complie/out
export RAYDUNDEV=/RaydunDev

mkdir -p ${DEVBUILDDIR}/c ${DEVBUILDDIR}/go ${RAYDUNDEV}



