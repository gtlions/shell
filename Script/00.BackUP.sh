#!/bin/bash
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOTDIR="$( cd ${CURRENTDIR}/.. && pwd )"
BACKUPDIR=${ROOTDIR}/DirBackUP
TEMPDIR=${ROOTDIR}/DirTemp
THIRDRESOURCEDIR=${ROOTDIR}/DirThirdResource
SCRIPTDIR=${ROOTDIR}/Script
# echo ${CURRENTDIR}
# echo ${ROOTDIR}
# echo ${BACKUPDIR}
# echo ${TEMPDIR}
# echo ${THIRDRESOURCEDIR}
# echo ${SCRIPTDIR}

cd ~/.oh-my-zsh && git pull
cd ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && git pull
cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && git pull

cd ${BACKUPDIR}
rm -rf ${BACKUPDIR}/*

mkdir -p ${TEMPDIR};rm -rf ${TEMPDIR}/*;cd ${TEMPDIR}
rsync -av ~/.oh-my-zsh . --exclude-from=${SCRIPTDIR}/excludepath.txt && mv .oh-my-zsh oh-my-zsh && tar -zcf oh-my-zsh.tar.gz oh-my-zsh && mv oh-my-zsh.tar.gz ${BACKUPDIR}/ && rm -rf oh-my-zsh
rsync -av ~/.ssh . --exclude-from=${SCRIPTDIR}/excludepath.txt && mv .ssh ssh && tar -zcf ssh.tar.gz ssh && mv ssh.tar.gz ${BACKUPDIR}/ && rm -rf zsh

cp ~/.gitconfig ${BACKUPDIR}/gitconfig
cp ~/.gitignore ${BACKUPDIR}/gitignore
cp ~/.zshrc ${BACKUPDIR}/zshrc
cp /etc/profile ${BACKUPDIR}/profile

