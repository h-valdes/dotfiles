#!/bin/bash

# Update the dotfiles
yes | cp -rf ./config/i3/config $HOME/.i3/config
yes | cp -rf ./config/polybar/ $HOME/.config
yes | cp -rf ./config/picom/ $HOME/.config
yes | cp -rf ./config/rofi/ $HOME/.config
yes | cp -rf ./config/Xresources $HOME/.Xresources

# Refresh the Xresources
xrdb ~/.Xresources

# Restart i3
i3-msg restart