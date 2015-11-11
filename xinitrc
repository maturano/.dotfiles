#!/bin/bash

setxkbmap -model kinesis -layout us -variant altgr-intl &

exec i3
