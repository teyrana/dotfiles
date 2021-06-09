# set command prompt
export PS1="\[\e[32m\][\t]\[\e[0m\]$ "

export EDITOR=jmacs

alias gith='git'
alias ll='ls -lh'
alias nemacs='emacs -nw'
alias pp='pwd'

export PATH=$PATH:/home/teyrana/.local/bin

setxkbmap -option ctrl:nocaps

# this disables interception of the 'ctrl-s', allowing bash-search
stty -ixon

