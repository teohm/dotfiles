#!/usr/bin/env bash

set -e

if [[ -z `which git` ]]; then
  echo 'err: please install git'
  exit 1;
fi

cd $HOME
git clone https://github.com/teohm/dotfiles.git .dotfiles

$HOME/.dotfiles/public/bin/dotfiles public
