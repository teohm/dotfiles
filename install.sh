#!/usr/bin/env sh

set -e

old_pwd=$PWD

cd $HOME
git clone https://github.com/teohm/dotfiles.git .dotfiles

cd .dotfiles
git submodules update --init
stow all

cd $old_pwd
