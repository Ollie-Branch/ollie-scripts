#!/usr/bin/env sh
pacman -Qs | grep $'^[a-zA-Z]' | awk -F '/' '{print $2}' | awk -F ' ' '{print $1}'
