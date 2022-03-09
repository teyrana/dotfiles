#! /bin/sh

ln -s ~/.dotfiles/.emacs ~/.emacs
ln -s ~/.dotfiles/.emacs.d ~/.emacs.d
ln -s ~/.dotfiles/.jmacsrc ~/.jmacsrc
ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

cat ~/.dotfiles/.bashrc >> ~/.bashrc
