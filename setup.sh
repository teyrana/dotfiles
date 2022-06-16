#! /bin/sh

ln -sf ~/.dotfiles/emacs ~/.emacs
ln -sf ~/.dotfiles/emacs.d ~/.emacs.d
ln -sf ~/.dotfiles/jmacsrc ~/.jmacsrc
ln -sf ~/.dotfiles/gitignore ~/.gitignore
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf

cat ~/.dotfiles/bashrc >> ~/.bashrc
