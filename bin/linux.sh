#!/bin/bash

# Check if system is Linux
if [ $(uname) != "Linux" ]; then
    echo "Error: This script only works on Linux" >> linuxsetup.log
    exit
fi

# Create .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# Check if .vimrc exists, backup if it does
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.bup_vimrc
    echo "Current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log
fi

# Copy contents of etc/vimrc to ~/.vimrc
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

# Add source statement to .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
