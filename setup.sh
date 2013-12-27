#!/usr/bin/env sh

set -e

if [[ -z `which stow` ]]; then
  echo 'err: please install stow'
  exit 1;
fi

old_pwd=$PWD

cd `dirname "${BASH_SOURCE[0]}"`
stow all

cd $old_pwd
