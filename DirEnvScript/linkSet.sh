#!/bin/bash
export DEVROOTBASE=/opt/sdk/google
export WORKSPACE=${DEVROOTBASE}/workspace
CURRENTPATH=$(cd `dirname $0`; pwd)
export RAYDUNDEV=/RaydunDev
mustLink=(bgpapi com.bak com.explore feedback guarddog install_all_one raydun raydunapi rdlic)
find ${RAYDUNDEV} -type l -exec rm {} \;
for i in "${mustLink[@]}"; do
    ln -s ${WORKSPACE}/${i} ${RAYDUNDEV}/${i}
done





