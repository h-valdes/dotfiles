#!/bin/bash
# Install and config a Manjaro i3 fresh system

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm rofi firefox hsetroot okular glfw-x11 cmake
sudo pacman -S --noconfirm polybar
sudo pacman -Syu code

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