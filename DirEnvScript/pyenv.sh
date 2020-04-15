#!/bin/bash
export GOOGLEDEVBASE=/usr/local/googledev
CURRENTPATH=$(cd `dirname $0`; pwd)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
      	eval "$(pyenv init -)"
fi