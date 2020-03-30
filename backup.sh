#!/bin/bash
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${CURRENTDIR}
rm -rf ${CURRENTDIR}/backup/*
rm -rf ${CURRENTDIR}/oh-my-zsh ${CURRENTDIR}/ssh

cd ~/.oh-my-zsh && git pull
cd ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && git pull
cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && git pull

cd ${CURRENTDIR} ; rsync --progress --delete -av ~/.oh-my-zsh . --exclude-from=excludepath.txt && mv .oh-my-zsh oh-my-zsh && tar -zcf oh-my-zsh.tar.gz oh-my-zsh && mv oh-my-zsh.tar.gz ${CURRENTDIR}/backup/ && rm -rf oh-my-zsh
cd ${CURRENTDIR} ; rsync --progress --delete -av ~/.ssh . --exclude-from=excludepath.txt && mv .ssh ssh && tar -zcf ssh.tar.gz ssh && mv ssh.tar.gz ${CURRENTDIR}/backup/ && rm -rf zsh

cd ${CURRENTDIR} ; cp ~/.gitconfig ${CURRENTDIR}/backup/gitconfig
cd ${CURRENTDIR} ; cp ~/.gitignore ${CURRENTDIR}/backup/gitignore
cd ${CURRENTDIR} ; cp ~/.zshrc ${CURRENTDIR}/backup/zshrc
cd ${CURRENTDIR} ; cp /etc/profile ${CURRENTDIR}/backup/profile
