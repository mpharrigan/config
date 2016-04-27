#!/bin/bash

git submodule update --init

cd $HOME

if [ ! -f config/machine.sh ]; then
    echo "You need to make machine.sh"
    exit 1;
fi

ln -sf config/bashrc.sh .bashrc
ln -sf config/bash_profile.sh .bash_profile
if [ -e .vim ]; then
    echo "Backing up .vim"
    mv .vim .vim.old
fi
ln -sf config/vim          .vim
ln -sf config/vimrc        .vimrc
ln -sf config/condarc.yaml .condarc
ln -sf config/gitconfig    .gitconfig
ln -sf config/ideavimrc    .ideavimrc
ln -sf config/vmdrc.tcl    .vmdrc
ln -sf config/screenrc     .screenrc
