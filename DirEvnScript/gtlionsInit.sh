#!/bin/bash
export GTLIONSBASE=/usr/local/gtlions
CURRENTPATH=$(cd `dirname $0`; pwd)

# alias
source ${GTLIONSBASE}/apps/shell/DirEvnScript/alias.sh

# pyenv
source ${GTLIONSBASE}/apps/shell/DirEvnScript/pyenv.sh

# golang
source ${GTLIONSBASE}/apps/golang/gosource.sh

# pgdb10
# source ${GTLIONSBASE}/apps/shell/DirEvnScript/pgdg10.sh
