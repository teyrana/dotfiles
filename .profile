# On-Login
# => Run for all shells
 

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

setxkbmap -option ctrl:nocaps
