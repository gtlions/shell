#!/bin/bash
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ~/.oh-my-zsh && git pull
cd ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && git pull
cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && git pull

cd ${CURRENTDIR}
rm -rf ${CURRENTDIR}/backup/*

rsync --progress --delete -av ~/.oh-my-zsh . --exclude-from=excludepath.txt && mv .oh-my-zsh oh-my-zsh && tar -zcf oh-my-zsh.tar.gz oh-my-zsh && mv oh-my-zsh.tar.gz ${CURRENTDIR}/backup/
rsync --progress --delete -av ~/.ssh . --exclude-from=excludepath.txt && mv .ssh ssh && tar -zcf ssh.tar.gz ssh && mv ssh.tar.gz ${CURRENTDIR}/backup/

cp ~/.gitconfig ${CURRENTDIR}/backup/gitconfig
cp ~/.gitignore ${CURRENTDIR}/backup/gitignore
cp ~/.zshrc ${CURRENTDIR}/backup/zshrc
cp /etc/profile ${CURRENTDIR}/backup/profile
