#!/bin/bash

source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh
source /usr/local/opt/git/etc/bash_completion.d/git-completion.bash

## Add git branch
PS1='\[\e[4m\e[34m\]\t:\W\[\e[0;33m\]$(__git_ps1 "(%s)") \[\e[m\]\$ '; [[ $EUID == 0 ]] &&
PS1='\[\e[4m\e[31m\]\t:\W\[\e[0;36m\]$(__git_ps1 "(%s)") \[\e[m\]\$ '
export GIT_PS1_SHOWDIRTYSTATE=1

complete -o default -o nospace -F _git_checkout gco
complete -o default -o nospace -F _git_branch gb
