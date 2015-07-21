#!/bin/bash

git submodule update --init

cd $HOME

if [ ! -f config/machine.sh ]; then
    echo "You need to make machine.sh"
    exit 1;
fi

ln -sf config/_bashrc.sh .bashrc
ln -sf config/_bash_profile.sh .bash_profile
mv .vim .vim.old
ln -sf config/_vim .vim
ln -sf config/_vimrc .vimrc
ln -sf config/_condarc.yaml .condarc
ln -sf config/_gitconfig .gitconfig
