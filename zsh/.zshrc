eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR='nvim'

# Create the local bin directory if it doesn't exist
mkdir -p "$HOME/.local/bin"

# -----------------------------------------------------
# ZINIT
# -----------------------------------------------------
# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"
# Run this to update
# zinit self-update
# zinit update --all


# Completions
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
autoload -Uz compinit
compinit
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
# Completion UI
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:*' fzf-preview 'less ${(Q)realpath}'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Autosuggestions style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"


# NVM
zinit ice wait lucid
zinit snippet /opt/homebrew/opt/nvm/nvm.sh



# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias ltree="eza --tree --level=2  --icons --git"
alias fe='eza --icons | fzf --preview="eza --long --icons --git {}"'
alias fet='eza --tree --icons | fzf'
# zoxide helpers
alias z='z'          # jump (default)
alias zi='zi'        # interactive fzf picker
alias cd='z'
alias cdd='command cd'
alias cdf='cd "$(dirname "$(fzf)")"'
# search files
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'


# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
