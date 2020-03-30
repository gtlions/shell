#!/bin/bash
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOTDIR="$( cd ${CURRENTDIR}/.. && pwd )"
BACKUPDIR=${ROOTDIR}/DirBackUP
TEMPDIR=${ROOTDIR}/DirTemp
THIRDRESOURCEDIR=${ROOTDIR}/DirThirdResource
SCRIPTDIR=${ROOTDIR}/Script

cd ${BACKUPDIR}/ && tar -zxf oh-my-zsh.tar.gz && rm -rf ~/.oh-my-zsh;mv oh-my-zsh ~/.oh-my-zsh
cd ${BACKUPDIR}/ && tar -zxf ssh.tar.gz && rm -rf ~/.ssh;mv ssh ~/.ssh
rm -rf ~/.gitconfig;cd ${BACKUPDIR}/ && cp gitconfig ~/.gitconfig
rm -rf ~/.gitignore;cd ${BACKUPDIR}/ && cp gitignore ~/.gitignore
rm -rf ~/.zshrc;cd ${BACKUPDIR}/ && cp zshrc ~/.zshrc