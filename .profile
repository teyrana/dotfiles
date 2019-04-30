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
export PS1='\e[0;32m[\t]\e[0;34m::\e[0;37m>'

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

setxkbmap -option ctrl:nocaps
