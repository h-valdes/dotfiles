#!/bin/bash
# ________  ________  _________  ________ ___  ___       _______   ________      
#|\   ___ \|\   __  \|\___   ___\\  _____\\  \|\  \     |\  ___ \ |\   ____\     
#\ \  \_|\ \ \  \|\  \|___ \  \_\ \  \__/\ \  \ \  \    \ \   __/|\ \  \___|_    
# \ \  \ \\ \ \  \\\  \   \ \  \ \ \   __\\ \  \ \  \    \ \  \_|/_\ \_____  \   
#  \ \  \_\\ \ \  \\\  \   \ \  \ \ \  \_| \ \  \ \  \____\ \  \_|\ \|____|\  \  
#   \ \_______\ \_______\   \ \__\ \ \__\   \ \__\ \_______\ \_______\____\_\  \ 
#    \|_______|\|_______|    \|__|  \|__|    \|__|\|_______|\|_______|\_________\
#                                                                    \|_________|
#                                                                                                                                                                
# Install and config a Manjaro i3 fresh system

sudo pacman -Syu --noconfirm
sudo pacman -Qqe > pkglist.txt # Install programs from text file

# Install VSCode extensions and themes
code --install-extension ms-vscode.cpptools
code --install-extension ms-python.python
code --install-extension k--kato.intellij-idea-keybindings
code --install-extension GitHub.github-vscode-theme

mkdir ~/Projects
mkdir ~/.background

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