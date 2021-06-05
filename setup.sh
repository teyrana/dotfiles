#! /bin/sh

ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.emacs ~/.emacs
ln -s ~/.dotfiles/.emacs.d ~/.emacs.d

echo 'source ~/.dotfiles/.bashrc\n' >> ~/.bashrc