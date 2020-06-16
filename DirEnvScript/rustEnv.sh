#!/bin/bash
export NODEBASE=/usr/local/node
CURRENTPATH=$(cd `dirname $0`; pwd)
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
