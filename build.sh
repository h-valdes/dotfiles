#!/bin/bash
# Install and config a Manjaro i3 fresh system

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm rofi firefox hsetroot ksysguard okular gnome-terminal glfw-x11
sudo pacman -S --noconfirm polybar
sudo snap install code --classic

# Install VSCode extensions and themes
code --install-extension ms-vscode.cpptools
code --install-extension ms-python.python
code --install-extension azemoh.one-monokai
code --install-extension k--kato.intellij-idea-keybindings

# Make zsh default shell and change theme (oh-my-zsh)
yes | cp -rf ./config/i3/config $HOME/.i3/config
mkdir $HOME/.config/polybar
yes | cp -rf ./config/polybar $HOME/.config/polybar

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/robbyrussell/avit/' ~/.zshrc
