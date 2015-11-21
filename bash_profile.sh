# .bash_profile

if [ -f ~/config/machine.sh ]; then
    . ~/config/machine.sh
fi

if [ -f ~/config/_bash_profiles/$CONFIG_MACHINE.sh ]; then
    . ~/config/_bash_profiles/$CONFIG_MACHINE.sh
fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
