export PATH

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREEN="\[\033[0;32m\]"
export NO_COLOR="\[\e[0m\]"
export LIGHT_GREEN="\[\033[1;32m\]"
PS1="$LIGHT_GREEN\W$NO_COLOR\$ "

PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/etc/bin
