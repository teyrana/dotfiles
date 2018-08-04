# Configuration Script for ZShell
# => Run for all shells
 

alias ll='ls -l'
alias emacsnw='emacs -nw'
alias nemacs='emacs -nw'

# these enable command history
export SAVEHIST=10
export HISTFILE=~/.zsh_history

# %T
#    Current time of day, in 24-hour format.
# %#
#    A ‘#’ if the shell is running with privileges, a ‘%’ if not.
#
PROMPT='%T::%#> '
 
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi
