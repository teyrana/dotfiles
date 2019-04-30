# Configuration Script for ZShell
# => Run for all shells
 

alias ll='ls -l'
alias pp='pwd'
alias emacsnw='emacs -nw'
alias nemacs='emacs -nw'


# %T
#    Current time of day, in 24-hour format.
# %#
#    A ‘#’ if the shell is running with privileges, a ‘%’ if not.
#
export PS1='\e[32m[\t]\e[34m::\e[0m>'

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

setxkbmap -option ctrl:nocaps
