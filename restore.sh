#!/bin/bash
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${CURRENTDIR}
rm -rf ~/.oh-my-zsh;cp -r ${CURRENTDIR}/backup/oh-my-zsh ~/.oh-my-zsh
rm -rf ~/.ssh;cp -r ${CURRENTDIR}/backup/ssh ~/.ssh
rm -rf ~/.gitconfig;cp ${CURRENTDIR}/backup/gitconfig ~/.gitconfig
rm -rf ~/.gitignore;cp ${CURRENTDIR}/backup/gitignore ~/.gitignore
rm -rf ~/.zshrc;cp ${CURRENTDIR}/backup/zshrc ~/.zshrc
