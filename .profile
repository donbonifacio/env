export PATH

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREEN="\[\033[0;32m\]"
export NO_COLOR="\[\e[0m\]"
export LIGHT_GREEN="\[\033[1;32m\]"
export CYAN="\[\033[0;36m\]"

function timer_start {
  timer=${timer:-$SECONDS}
}

function timer_stop {
  timer_show=$(($SECONDS - $timer))
  unset timer
}

trap 'timer_start' DEBUG

PROMPT_COMMAND="timer_stop"

export PS1='[time ${timer_show}s, exit $?]\n'
export PS1="$PS1$LIGHT_GREEN\W$NO_COLOR"
export PS1="$PS1\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/[$CYAN\1$NO_COLOR]/')$ "

export EDITOR=vim
export GREP_OPTIONS="--color"

PATH=$HOME/bin:$PATH
#PATH=$HOME/bin/nvim-osx64/bin:$PATH
PATH=$HOME/etc/bin:$PATH
PATH=$HOME/.rbenv/bin:$PATH

export SCALA_HOME
SCALA_HOME=$HOME/bin/scala/
PATH=$HOME/bin/scala/bin/:$PATH
PATH=$HOME/bin/sbt-0.13.1/bin/:$PATH

source ~/.git-completion.bash
[ -f ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias pg-start="brew services start postgresql"
alias pg-stop="brew services stop postgresql"
