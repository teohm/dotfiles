#!/usr/bin/env bash

old_pwd=$PWD

cd `dirname "${BASH_SOURCE[0]}"`
gittrees-update
stow public

cd $old_pwd
