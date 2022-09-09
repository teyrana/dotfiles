#! /bin/sh

# GNU Emacs configuration
ln -sf ~/.dotfiles/emacs     ~/.emacs
ln -sf ~/.dotfiles/emacs.d   ~/.emacs.d

# jmacs config file
ln -sf ~/.dotfiles/jmacsrc   ~/.jmacsrc

# Git Configuration
ln -sf ~/.dotfiles/gitignore ~/.gitignore
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

# Byobu Configuration
ln -s ~/.dotfiles/byoburc ~/.byoburc
ln -s ~/.dotfiles/byobu ~/.byobu

# link VS.Code-Specific Configuration Files into their target locations
ln -sf ~/.dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -sf ~/.dotfiles/vscode/settings.json    ~/.config/Code/User/settings.json

cat ~/.dotfiles/bashrc >> ~/.bashrc
