#!/bin/bash
export GTLIONSBASE=/usr/local/gtlions
CURRENTPATH=$(cd `dirname $0`; pwd)

# alias
source ${GTLIONSBASE}/apps/shell/DirEnvScript/alias.sh

# pyenv
#source ${GTLIONSBASE}/apps/shell/DirEnvScript/pyenv.sh

# golang
source /usr/local/golang/gosource.sh

# pgdb10
# source ${GTLIONSBASE}/apps/shell/DirEnvScript/pgdg10.sh
