#!/bin/bash
CURRENTPATH=$(cd `dirname $0`; pwd)
RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
mkdir -p $HOME/.cargo; rm -rf $HOME/.cargo/config
cp ${CURRENTPATH}/rust.cargo.config $HOME/.cargo/config
# export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
# 清华大学
# RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
# 中国科学技术大学
# RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
# RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
# 上海交通大学
# RUSTUP_DIST_SERVER=https://mirrors.sjtug.sjtu.edu.cn/rust-static/
