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

# Enable completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Completion on homebrew
command -v brew >/dev/null
if [ $? -eq 0 ]; then
    if [ -f `brew --prefix`/etc/bash_completion ]; then
          . `brew --prefix`/etc/bash_completion
          . /usr/local/git/contrib/completion/git-completion.bash
    fi
fi

# Tab title
case "$TERM" in
    xterm*|rxvt*)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
        ;;
    *)  ;;
esac

# shopt
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s globstar 2>/dev/null
shopt -s checkwinsize

# Keychain
if [ -f $HOME/opt/keychain/keychain ]; then
    eval `$HOME/opt/keychain/keychain --agents ssh --eval id_rsa`
fi

# Git prompt
source $HOME/config/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE="yup"
export GIT_PS1_SHOWUNTRACKEDFILES="yup"
export GIT_PS1_SHOWUPSTREAM="verbose"
export SLURM_TIME_FORMAT="relative"

# Prompt
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

command -v dircolors >/dev/null && eval "$(dircolors -b)"

# manpage colors
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline


# Aliases
command -v gls >/dev/null && \
    alias ls='gls -lhv --color=auto --group-directories-first' || \
    alias ls='ls -lhv --color=auto --group-directories-first'

alias vi='vim'
alias savecmd="fc -ln -1 | sed '1s/^[[:space:]]*//'"
alias gb='git branch -vv --sort=committerdate'

#vim: tw=75
