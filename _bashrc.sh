# .bashrc

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# shopt
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s globstar
shopt -s checkwinsize

# configure programs
eval `$HOME/opt/keychain/keychain --agents ssh --eval id_rsa`
source $HOME/opt/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE="yup"
export GIT_PS1_SHOWUNTRACKEDFILES="yup"
export GIT_PS1_SHOWUPSTREAM="verbose"
export SLURM_TIME_FORMAT="relative"

# prompt
function make_ps1
{
local GREEN="\[\033[0;32m\]"
local BBLUE="\[\033[1;34m\]"
local   RED="\[\033[0;31m\]"
local NOCOL="\[\033[0m\]"

local GIT='$(__git_ps1 " (%s)")'
PS1="$GREEN\h$NOCOL: $BBLUE\w$NOCOL$RED$GIT$NOCOL\n\\$ "
}
make_ps1

# Aliases
alias ls='ls -lhv --color=auto --group-directories-first'
alias vi='vim'


#vim: tw=75
