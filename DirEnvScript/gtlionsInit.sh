#!/bin/bash
#mkdir -p /opt/sdk;ln -s /data/sdk/google /opt/sdk/google
export DEVBASEROOT=/opt/sdk/google
CURRENTPATH=$(cd `dirname $0`; pwd)

# alias
source ${DEVBASEROOT}/apps/shell/DirEnvScript/alias.sh

# pyenv
#source ${DEVBASEROOT}/apps/shell/DirEnvScript/pyenv.sh

# golang
source ${DEVBASEROOT}/apps/golang/gosource.sh

# node
source ${DEVBASEROOT}/apps/shell/DirEnvScript/node.sh

# pgdb10
# source ${DEVBASEROOT}/apps/shell/DirEnvScript/pgdg10.sh
