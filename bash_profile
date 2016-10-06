#!/bin/bash

source ~/.git-completion.bash
source ~/.git-prompt.sh





#################################
# Colors                        #
#################################

txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White

bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White

unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White

bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
badgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White

txtrst='\[\e[0m\]'    # Text Reset





GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1="\n $txtred$USER 💩  $txtgrn\w '$(
		if [[ $(__git_ps1) =~ \*\)$ ]]; then
		# a file has been modified but not added
			echo $txtylw$(__git_ps1 "(%s)")
		elif [[ $(__git_ps1) =~ \+\)$ ]]; then
		# a file has been added, but not commited
			echo $txtpur$(__git_ps1 "(%s)")
		# the state is clean, changes are commited
		else
			echo $txtcyn$(__git_ps1 "(%s)")
		fi
	)'
$txtblu$ $txtrst"





#################################
# Functional Shortcuts          #
#################################

# Open file in Google Chrome ex: 'chrome index.html'
chrome () {
  open -a "Google Chrome" "$1"
}

# Git add all and commit
gacm () {
  git acm "$*"
}

# Create a directory and enter it immediately
mkcd () {
  mkdir $1
  cd $1
}

# Create a file and open it in Atom
tosu () {
  touch "$1"
  atom "$1"
}





#################################
# Aliases                       #
#################################

alias ll='ls -lah'
alias gg='git status -s'

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
alias gpom="git push origin master"

# Reload .bash_profile
alias prof="atom ~/.bash_profile"
alias reprof=". ~/.bash_profile"
