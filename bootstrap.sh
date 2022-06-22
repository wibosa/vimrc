#!/usr/bin/env bash

git pull origin main

rsync -avh --no-perms vimrc ~/.vimrc
rsync -avh --no-perms vimrc.preload ~/.vimrc.preload
rsync -avh --no-perms vimrc.afterload ~/.vimrc.afterload
rsync -avh --no-perms --exclude .DS_Store vim/* ~/.vim/
