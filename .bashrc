setxkbmap -option ctrl:nocaps

# set command prompt
export PS1="\[\e[32m\][\t]\[\e[0m\]#>"


alias gith='git'
alias ll='ls -lh'
alias nemacs='emacs -nw'
alias pp='pwd'

# this disables interception of the 'ctrl-s', allowing bash-search
stty -ixon
