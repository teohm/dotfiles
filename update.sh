#!/usr/bin/env sh

old_pwd=$PWD

cd `dirname "${BASH_SOURCE[0]}"`
git pull --recurse-submodules
stow all

cd $old_pwd
