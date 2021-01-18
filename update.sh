#!/bin/bash

# Update the dotfiles
yes | cp -rf ./config/i3/config $HOME/.i3/config
yes | cp -rf ./config/polybar/ $HOME/.config
yes | cp -rf ./config/picom/ $HOME/.config
yes | cp -rf ./config/rofi/ $HOME/.config
yes | cp -rf ./config/Xresources $HOME/.Xresources
yes | cp -rf ./config/urxvt/ext/. $HOME/.urxvt/ext
yes | cp -rf ./config/zsh/themes/. $HOME/.oh-my-zsh/themes

# Refresh the Xresources
xrdb ~/.Xresources

# Restart i3
i3-msg restart