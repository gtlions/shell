#!/bin/bash
export DEVBASEROOT=/opt/sdk/google
CURRENTPATH=$(cd `dirname $0`; pwd)
alias cdgt="cd ${DEVBASEROOT}"
alias cdwk="cd ${DEVBASEROOT}/workspace"
alias cdgo="cd ${DEVBASEROOT}/apps/golang"
alias cdapps="cd ${DEVBASEROOT}/apps"
alias dbg="ps -ef |grep 'bin/raydun-'|grep -v grep|awk '{print $2}'|xargs kill -9 ;$GOPATH/bin/bra run"
alias rd="systemctl stop raydun-server;rpm -e raydun-6.2.0-Beta.x86_64 ;rm -rf /usr/share/raydun /var/lib/raydun;rpm -ivh /usr/local/googledev/apps/portable/golang/gopath/src/github.com/raydun/raydun/dist/raydun-6.2.0-Beta.x86_64.rpm;systemctl daemon-reload;systemctl restart raydun-server"
alias sy51="rsync --progress -av /usr/local/googledev/workspace/install_all_one 192.168.1.51:/root/"
alias sy53="rsync --progress -av /usr/local/googledev 192.168.1.53:/usr/local/"
export DEVBUILDDIR=~/NoInTime/complie/out
mkdir -p ${DEVBUILDDIR}/c ${DEVBUILDDIR}/go

alias syncfrom105='rsync -avzhe ssh root@192.168.1.105:/usr/local/googledev /usr/local --delete'

alias vm111='vmrun -T ws revertToSnapshot "/data/vm/svm/c111/c111.vmx" mysnapshot && vmrun -T ws start "/data/vm/svm/c111/c111.vmx" nogui'
