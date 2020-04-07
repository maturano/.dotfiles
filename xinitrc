#!/usr/bin/env bash


setxkbmap -model kinesis -layout us -variant altgr-intl
xrdb -merge ${HOME}/.dotfiles/Xresources
feh --bg-scale $HOME/.dotfiles/_assets/wallpaper.png

exec i3
