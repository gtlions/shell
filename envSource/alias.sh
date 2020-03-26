#!/bin/bash
export GTLIONSBASE=/usr/local/gtlions
CURRENTPATH=$(cd `dirname $0`; pwd)
alias cdgt="cd ${GTLIONSBASE}"
alias cdwk="cd ${GTLIONSBASE}/workspace"
alias cdgo="cd ${GTLIONSBASE}/apps/golang"
alias cdapps="cd ${GTLIONSBASE}/apps"
alias dbg="ps -ef |grep 'bin/raydun-'|grep -v grep|awk '{print $2}'|xargs kill -9 ;$GOPATH/bin/bra run"
alias rd="systemctl stop raydun-server;rpm -e raydun-6.2.0-Beta.x86_64 ;rm -rf /usr/share/raydun /var/lib/raydun;rpm -ivh /usr/local/gtlions/apps/portable/golang/gopath/src/github.com/raydun/raydun/dist/raydun-6.2.0-Beta.x86_64.rpm;systemctl daemon-reload;systemctl restart raydun-server"
alias sy51="rsync --progress -av /usr/local/gtlions/workspace/install_all_one 192.168.1.51:/root/"
alias sy53="rsync --progress -av /usr/local/gtlions 192.168.1.53:/usr/local/"
export DEVBUILDDIR=~/NoInTime/complie/out
mkdir -p ${DEVBUILDDIR}/c ${DEVBUILDDIR}/go

alias syncfrom105='rsync -avzhe ssh root@192.168.1.105:/usr/local/gtlions /usr/local --delete'