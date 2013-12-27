#!/usr/bin/env sh

old_pwd=$PWD

cd `dirname "${BASH_SOURCE[0]}"`
gittrees-update
stow all

cd $old_pwd
