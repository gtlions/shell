#!/bin/bash
#ln -s /usr/local/googledev/apps/golang /usr/local/golang
export GTLIONSBASE=/usr/local/googledev
CURRENTPATH=$(cd `dirname $0`; pwd)

# alias
source ${GTLIONSBASE}/apps/shell/DirEnvScript/alias.sh

# pyenv
#source ${GTLIONSBASE}/apps/shell/DirEnvScript/pyenv.sh

# golang
source /usr/local/golang/gosource.sh

# pgdb10
# source ${GTLIONSBASE}/apps/shell/DirEnvScript/pgdg10.sh
