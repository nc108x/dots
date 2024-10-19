#!/bin/bash

dots=$(dirname "$(realpath $0)")
echo "Copying config files..."

rm ~/.gitconfig
ln -s $dots/git/gitconfig ~/.gitconfig

rm ~/.tmux.conf
ln -s $dots/tmux/tmux.conf ~/.tmux.conf

rm ~/.wezterm.lua
ln -s $dots/wezterm/wezterm.lua ~/.wezterm.lua

rm ~/.zshrc
ln -s $dots/zsh/zshrc ~/.zshrc

rm -rf ~/.config/nvim
ln -s $dots/nvim ~/.config/nvim

echo "Done :)"
