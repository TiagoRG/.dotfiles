# Dotfiles

Repository with my dotfiles and some configurations

## Requirements

For everything to work properly, the following packages must be installed.

#### Arch Linux

```sh
sudo pacman -S git stow vim neovim zsh clang
```

## Installation

### Clone the repo

#### Using HTTPS

```sh
git clone https://github.com/TiagoRG/.dotfiles.git
```

#### Using SSH

```sh
git clone git@github.com:TiagoRG/.dotfiles.git
```

#### Using GitHub CLI

```sh
gh repo clone TiagoRG/.dotfiles
```

### Setup stow's symlinks

```sh
cd .dotfiles
stow .
```
