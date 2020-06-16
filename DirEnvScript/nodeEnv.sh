#!/bin/bash
export NODEBASE=/usr/local/node
CURRENTPATH=$(cd `dirname $0`; pwd)
export PATH=$NODEBASE/bin:$PATH
