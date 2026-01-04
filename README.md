# Dotfiles

## Generating git SSH Keys (MacOS/WSL/Linux)

## Generate a new SSH key

Follow this or continue with the steps below
[github generate new ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=mac)

 <br>

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

### Start the SSH agent and add the key

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

### Copy the public key to the clipboard

```bash
cat ~/.ssh/id_ed25519.pub
```

### Add the public key to Github

Go to [GitHub SSH Settings](https://github.com/settings/ssh/new) and add the public key

### Test the connection

```bash
ssh -T git@github.com
```

### Create the local git credentials file

```bash
git config --global user.name "name"
git config --global user.email "your@email.com"
git config --global github.user "githubusername"
```

# Installation

## Macos

### Run the setup script

```bash
mkdir dotfiles
# copy the setup-macos.sh file from github to local file
chmod +x setup-macos.sh
./setup-macos.sh
```

#### read through script and fix the errors

- homebrew
- git
- dotfiles using stow
- Zsh uses zinit package manager for things related to zsh. read .zshrc

#### raycast

- setup raycast with shortcuts in ./shortcuts.md
- extensive raycast setup not included in this repo

## Ubuntu

### Run

```bash
sudo apt update && sudo apt upgrade -y
sudo apt update && sudo apt install -y git
```

### Clone the dotfile repo into `$HOME`

```bash
cd ~
git clone git@github.com:jacobusa/dotfiles.git ~/dotfiles
```

### Run the setup Script

```bash
mkdir dotfiles
chmod +x setup-ubuntu.sh
./setup-ubuntu.sh
```
