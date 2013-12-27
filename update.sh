#!/usr/bin/env bash

old_pwd=$PWD

cd `dirname "${BASH_SOURCE[0]}"`
git pull origin
stow all

cd $old_pwd
