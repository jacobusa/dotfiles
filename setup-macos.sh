#!/usr/bin/env bash
set -euo pipefail

echo -e "Setting up your macOS dotfiles environment..."

# -----------------------------------------------------
#  Homebrew
# -----------------------------------------------------
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo -e "Homebrew already installed."
fi

brew install zsh
chsh -s $(zsh)

# CLIs
brew install git
brew install stow
brew install neovim
brew install docker
brew install starship
brew install fzf
brew install eza
brew install zoxide
brew install bat
brew install screenfetch
brew install nvm
# GUIs
brew install --cask raycast
brew install --cask wezterm
brew install --cask docker
brew install --cask font-jetbrains-mono-nerd-font

# -----------------------------------------------------
#  Dotfiles
# -----------------------------------------------------
git clone git@github.com:jacobusa/dotfiles.git "$HOME/dotfiles"
cd "$HOME/dotfiles"
stow zsh
stow wezterm
stow starship
stow nvim
stow git
