# .bash_profile

export KRB5_CLIENT_KTNAME=$HOME/.ssh/stanford.keytab

if [ -f ~/config/machine.sh ]; then
    . ~/config/machine.sh
fi

if [ -f ~/config/profiles/$CONFIG_MACHINE.sh ]; then
    . ~/config/profiles/$CONFIG_MACHINE.sh
fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
