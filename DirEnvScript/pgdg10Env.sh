#!/bin/bash
export DEVROOTBASE=/opt/sdk/google
CURRENTPATH=$(cd `dirname $0`; pwd)
export PGHOME=/usr/local/pgsql10
export PGPORT=9921
export PGDATA=/data/pgdata
export PATH=$PGHOME/bin:$PATH
export LD_LIBRARY_PATH=$PGHOME/lib:$LD_LIBRARY_PATH
