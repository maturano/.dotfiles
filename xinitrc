#!/bin/bash

setxkbmap -model kinesis -layout us -variant altgr-intl &
xrdb -merge ${HOME}/.Xresources

exec i3
