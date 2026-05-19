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
# brew install docker
brew install starship
brew install fzf
brew install eza
brew install zoxide
brew install bat
brew install screenfetch
brew install nvm
# neovim
brew install ripgrep
brew install fd
brew install neovim
# GUIs
brew install --cask raycast
brew install --cask google-chrome
brew install --cask wezterm
brew install --cask docker # may need to install rosetta
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask cursor     # optionsl
brew install --cask 1password  # optionsl
brew install --cask notion     # optionsl
brew install --cask linear     # optionsl
brew install --cask rectangle  # optionsl
brew install --cask spotify    # optionsl
brew install --cask zoom       # optionsl
brew install --cask cursor-cli # optionsl, might need to install using curl manually because brew is not working with it

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
