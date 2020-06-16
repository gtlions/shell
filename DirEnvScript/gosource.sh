#!/bin/bash
CURRENTPATH=$(cd `dirname $0`; pwd)
alias cdgo='cd ${CURRENTPATH}'
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct
export GOROOT=${CURRENTPATH}/goroot
export GOPATH=${CURRENTPATH}/gopath
export GOVSCODE=${GOROOT}/../govscode
export DEVBUILDTMP=~/gtlions/NoInTime/devbuildtmp
export PATH=$GOROOT/bin:$GOPATH/bin:$GOVSCODE/bin:$PATH
