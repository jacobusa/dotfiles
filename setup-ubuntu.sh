#!/usr/bin/env bash
set -euo pipefail

echo -e "Setting up your Ubuntu dotfiles environment..."

sudo apt update && sudo apt upgrade -y
sudo apt install git 
sudo apt install build-essential 
sudo apt install curl 
suod apt install zsh
sudo apt install xdotool
sudo apt install stow
sudo apt install neovim
sudo apt install zsh

chsh -s $(zsh)
git clone git@github.com:jacobusa/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow zsh
stow wezterm
stow starship
stow git
stow nvim