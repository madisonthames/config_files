[[ -s "$home/.profile" ]] && source "$home/.profile" # load the default .profile

[[ -s "$home/.rvm/scripts/rvm" ]] && source "$home/.rvm/scripts/rvm" # load rvm into a shell session *as a function*

#!/bin/bash

source ~/.git-completion.bash
source ~/.git-prompt.sh

magenta="\[\033[0;35m\]"
yellow="\[\033[0;33m\]"
blue="\[\033[34m\]"
light_gray="\[\033[0;37m\]"
cyan="\[\033[0;36m\]"
green="\[\033[0;32m\]"

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
function gacm() {
  git acm "$*"
}

git_ps1_showdirtystate=true
export ls_options='--color=auto'
export clicolor='yes'
export lscolors=gxfxbeaebxxehehbadacad

export ps1=$cyan'\n\d '$light_gray'\a 💩 $(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$yellow'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$magenta'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
    else echo "'$cyan'"$(__git_ps1 " (%s)")
    fi)'$yellow" \w "$cyan"→ "$green





#############
# ALIASES   #
#############

# Change directories
alias dm="cd ~/devmtn"
alias code="cd ~/coding"
alias ..="cd .."

# Live-server
alias lsq='live-server -q'

# Git
alias ucdm="uncommitted ~/DevMtn" # Install https://github.com/eapen/uncommitted
alias uccd="uncommitted ~/Coding"
alias grv="git remote -v"
alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'

# Reload .bash_profile
alias srcbp="source ~/.bash_profile"
