#!/bin/bash
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${CURRENTDIR}
cd ${CURRENTDIR}/backup/ && tar -zxf oh-my-zsh.tar.gz && rm -rf ~/.oh-my-zsh;mv ${CURRENTDIR}/backup/oh-my-zsh ~/.oh-my-zsh
cd ${CURRENTDIR}/backup/ && tar -zxf ssh.tar.gz && rm -rf ~/.ssh;mv ${CURRENTDIR}/backup/ssh ~/.ssh
rm -rf ~/.gitconfig;cp ${CURRENTDIR}/backup/gitconfig ~/.gitconfig
rm -rf ~/.gitignore;cp ${CURRENTDIR}/backup/gitignore ~/.gitignore
rm -rf ~/.zshrc;cp ${CURRENTDIR}/backup/zshrc ~/.zshrc
