#!/usr/bin/env sh
flatpak list --app | awk -F"\t" '{print $2}'
