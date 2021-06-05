#! /bin/sh

ln -s ~/.dotfiles/.emacs ~/.emacs
ln -s ~/.dotfiles/.emacs.d ~/.emacs.d
ln -s ~/.dotfiles/.joerc ~/.joerc
ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo 'source ~/.dotfiles/.bashrc\n' >> ~/.bashrc
