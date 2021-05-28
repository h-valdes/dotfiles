#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --needed - < pkglist.txt # Install programs from text file

# Install snap packages
sudo snap install code --classic
sudo snap install spotify

# Install VSCode extensions and themes
code --install-extension ms-vscode.cpptools
code --install-extension ms-python.python
code --install-extension k--kato.intellij-idea-keybindings
code --install-extension GitHub.github-vscode-theme

mkdir $HOME/Projects
mkdir $HOME/.background
mkdir $HOME/.vim
mkdir $HOME/.vim/colors

# Make zsh default shell and change theme (oh-my-zsh)
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/robbyrussell/avit/' ~/.zshrc

# Copy Hack font
sudo cp -r ./fonts/hack /usr/share/fonts

# Call the script that updates the dotfiles
sh update.sh

# Copy the font into the system
sudo cp -rf ./fonts/hack /urs/share/fonts