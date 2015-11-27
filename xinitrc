#!/bin/bash

setxkbmap -model kinesis -layout us -variant altgr-intl
xrdb -merge ${HOME}/.dotfiles/Xresources
feh --bg-scale $HOME/.dotfiles/_assets/wallpaper.jpg

exec i3
