# .profile

export KRB5_CLIENT_KTNAME="$HOME/.ssh/stanford.keytab"

[ -f "$HOME/config/machine.sh" ]                  && . "$HOME/config/machine.sh"
[ -f "$HOME/config/profiles/$CONFIG_MACHINE.sh" ] && . "$HOME/config/profiles/$CONFIG_MACHINE.sh"
