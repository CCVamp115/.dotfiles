#!/bin/bash

# Remove .vimrc file from home directory
rm -f ~/.vimrc

# Remove the line containing source ~/.dotfiles/etc/bashrc_custom from .bashrc
sed -i '/source ~\/\.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove .TRASH directory from home directory
rm -rf ~/.TRASH
