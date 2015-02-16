function git_branch_line
{
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function gack
{
  project_root=`git rev-parse --show-toplevel`
  ack "$@" $project_root
}

HISTSIZE=100000

BLUE="\[\033[0;34m\]"
RED="\[\033[0;31m\]"
LIGHT_GRAY="\[\033[0;37m\]"
NOCOLOR="\[\033[00m\]"

PS1="$LIGHT_GRAY\u@\h$NOCOLOR:$BLUE\w$NOCOLOR$RED\
\$(git_branch_line)$NOCOLOR\$ "

alias ls='ls --color=yes'

export EDITOR=vim

export CCACHE_COMPRESS
export CCACHE_BASEDIR=$HOME
