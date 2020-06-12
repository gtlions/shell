#!/bin/bash
# mkdir -p /opt/sdk;ln -s /data/sdk/google /opt/sdk/google
export DEVROOTBASE=/opt/sdk/google
CURRENTPATH=$(cd `dirname $0`; pwd)

# envSet
source ${DEVROOTBASE}/apps/shell/DirEnvScript/evnSet.sh
# linkSet
source ${DEVROOTBASE}/apps/shell/DirEnvScript/linkSet.sh

# alias
source ${DEVROOTBASE}/apps/shell/DirEnvScript/alias.sh

# pyenv
#source ${DEVROOTBASE}/apps/shell/DirEnvScript/pyenv.sh

# golang
source ${DEVROOTBASE}/apps/golang/gosource.sh

# node
source ${DEVROOTBASE}/apps/shell/DirEnvScript/node.sh

# pgdb10
# source ${DEVROOTBASE}/apps/shell/DirEnvScript/pgdg10.sh
