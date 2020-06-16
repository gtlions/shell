#!/bin/bash
# mkdir -p /opt/sdk;ln -s /data/sdk/google /opt/sdk/google
export DEVROOTBASE=/opt/sdk/google
CURRENTPATH=$(cd `dirname $0`; pwd)

# proxy 
source ${DEVROOTBASE}/apps/shell/DirEnvScript/proxyUsage.sh
# envSet
source ${DEVROOTBASE}/apps/shell/DirEnvScript/envSet.sh
# linkSet
# source ${DEVROOTBASE}/apps/shell/DirEnvScript/linkSet.sh

# alias
source ${DEVROOTBASE}/apps/shell/DirEnvScript/alias.sh

# pyenv
#source ${DEVROOTBASE}/apps/shell/DirEnvScript/pyenv.sh

# golang
source ${DEVROOTBASE}/apps/golang/gosource.sh

# rust
source ${DEVROOTBASE}/apps/shell/DirEnvScript/rustEnv.sh

# node
source ${DEVROOTBASE}/apps/shell/DirEnvScript/nodeEnv.sh

# pgdb10
# source ${DEVROOTBASE}/apps/shell/DirEnvScript/pgdg10Env.sh
