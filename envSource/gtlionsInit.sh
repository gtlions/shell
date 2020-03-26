#!/bin/bash
export GTLIONSBASE=/usr/local/gtlions
CURRENTPATH=$(cd `dirname $0`; pwd)

# alias
source ${GTLIONSBASE}/apps/shell/envSource/alias.sh

# pyenv
source ${GTLIONSBASE}/apps/shell/envSource/pyenv.sh

# golang
source ${GTLIONSBASE}/apps/golang/gosource.sh

# pgdb10
source ${GTLIONSBASE}/apps/shell/envSource/pgdg10.sh
