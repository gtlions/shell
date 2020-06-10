#!/bin/bash
export DEVROOTBASE=/opt/sdk/google
CURRENTPATH=$(cd `dirname $0`; pwd)
alias cdgt="cd ${DEVROOTBASE}"
alias cdwk="cd ${DEVROOTBASE}/workspace"
alias cdgo="cd ${DEVROOTBASE}/apps/golang"
alias cdapps="cd ${DEVROOTBASE}/apps"
alias dbg="ps -ef |grep 'bin/raydun-'|grep -v grep|awk '{print $2}'|xargs kill -9 ;$GOPATH/bin/bra run"
alias rd="systemctl stop raydun-server;rpm -e raydun-6.2.0-Beta.x86_64 ;rm -rf /usr/share/raydun /var/lib/raydun;rpm -ivh /opt/sdk/google/apps/portable/golang/gopath/src/github.com/raydun/raydun/dist/raydun-6.2.0-Beta.x86_64.rpm;systemctl daemon-reload;systemctl restart raydun-server"
alias sy51="rsync --progress -av /opt/sdk/google/workspace/install_all_one 192.168.1.51:/root/"
alias sy53="rsync --progress -av /opt/sdk/google 192.168.1.53:/usr/local/"
export DEVBUILDDIR=~/NoInTime/complie/out
mkdir -p ${DEVBUILDDIR}/c ${DEVBUILDDIR}/go

alias syncfrom105='rsync -avzhe ssh root@192.168.1.105:/opt/sdk/google /usr/local --delete'

alias vm111='vmrun -T ws revertToSnapshot "/data/vm/svm/c111/c111.vmx" mysnapshot && vmrun -T ws start "/data/vm/svm/c111/c111.vmx" nogui'

# mkdir -p /data/oracle/golang
# 0 */1 * * * rsync -a /opt/sdk/google/apps/golang /data/oracle/golang --delete
# 0 */1 * * * rsync -a /opt/sdk/google/apps/golang /data/go1 --delete
# 0 */1 * * * rsync -a /opt/sdk/google/apps/golang /data/golang --delete

alias usego1='export GO111MODULE=on;export GOPROXY=https://goproxy.cn,direct;export GODIR=/data/oracle/golang/golang;export GOROOT=$GODIR/goroot;export GOPATH=$GODIR/gopath;export GOVSCODE=$GODIR/govscode;export DEVBUILDTMP=~/gtlions/NoInTime/devbuildtmp;export PATH=$GOROOT/bin:$GOPATH/bin:$GOVSCODE/bin:$PATH'
alias usego2='export GO111MODULE=on;export GOPROXY=https://goproxy.cn,direct;export GODIR=/data/go1/golang;export GOROOT=$GODIR/goroot;export GOPATH=$GODIR/gopath;export GOVSCODE=$GODIR/govscode;export DEVBUILDTMP=~/gtlions/NoInTime/devbuildtmp;export PATH=$GOROOT/bin:$GOPATH/bin:$GOVSCODE/bin:$PATH'
alias usego3='export GO111MODULE=on;export GOPROXY=https://goproxy.cn,direct;export GODIR=/data/golang/golang;export GOROOT=$GODIR/goroot;export GOPATH=$GODIR/gopath;export GOVSCODE=$GODIR/govscode;export DEVBUILDTMP=~/gtlions/NoInTime/devbuildtmp;export PATH=$GOROOT/bin:$GOPATH/bin:$GOVSCODE/bin:$PATH'



