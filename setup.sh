#!/bin/bash

# Save current directory
ORIGIN_DIR=$(pwd)
cd "$HOME" || exit

# Install git
sudo pacman -S git --noconfirm

# Install yay
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay || exit
makepkg -si --noconfirm
sudo pacman -U yay-*.pkg.tar.zst --noconfirm
cd "$OLDPWD" || exit

# Install the required packages
echo -e "\e[32m$1\e[0mInstalling the required packages"
yay -S stow gvim neovim zsh fzf bat clang nodejs npm zoxide pfetch ripgrep tree --noconfirm

# Clone the dotfiles if it's not the current directory
if [ "$(pwd)" != "$HOME/.dotfiles" ]; then
    echo -e "\e[32m$1\e[0mCloning the dotfiles repository"
    git clone "https://github.com/TiagoRG/.dotfiles.git" "$HOME/.dotfiles"
fi

# Setup Vim
echo -e "\e[32m$1\e[0mSetting up Vim"
echo -e "\e[32m$1\e[0mInstalling OneDark theme"
curl -fLo "$HOME/.dotfiles/.vim/colors/onedark.vim" --create-dirs "https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim"
curl -fLo "$HOME/.dotfiles/.vim/autoload/onedark.vim" --create-dirs "https://raw.githubusercontent.com/joshdick/onedark.vim/master/autoload/onedark.vim"
echo -e "\e[32m$1\e[0mInstalling Copilot"
git clone "https://github.com/github/copilot.vim.git" "$HOME/.dotfiles/.vim/pack/github/start/copilot.vim"
echo -e "\e[32m$1\e[0mSetting up Copilot"
stow -d .dotfiles .
/bin/vim -c 'Copilot setup' -c 'qa!'

# Setup Neovim
echo -e "\e[32m$1\e[0mSetting up Neovim"
echo -e "\e[32m$1\e[0mInstalling Packer"
git clone --depth 1 "https://github.com/wbthomason/packer.nvim" "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"

# Setup zsh
echo -e "\e[32m$1\e[0mSetting up zsh"
chsh -s /bin/zsh
echo -e "\e[32m$1\e[0mInstalling zsh-autosuggestions"
git clone "https://github.com/zsh-users/zsh-autosuggestions.git" "$HOME/.dotfiles/.zsh/zsh-autosuggestions"
echo -e "\e[32m$1\e[0mInstalling zsh-syntax-highlighting"
git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$HOME/.dotfiles/.zsh/zsh-syntax-highlighting"

# Restore the original directory
cd "$ORIGIN_DIR" || exit

