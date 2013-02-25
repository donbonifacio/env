export PATH

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREEN="\[\033[0;32m\]"
export NO_COLOR="\[\e[0m\]"
export LIGHT_GREEN="\[\033[1;32m\]"
export CYAN="\[\033[0;36m\]"

export PS1="$LIGHT_GREEN\W$NO_COLOR"
export PS1="$PS1\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/[$CYAN\1$NO_COLOR]/')$ "

export EDITOR=vim
export GREP_OPTIONS="--color"

PATH=$HOME/bin:$PATH
PATH=$HOME/etc/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin
