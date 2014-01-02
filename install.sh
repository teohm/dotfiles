#!/usr/bin/env bash

set -e

if [[ -z `which git` ]]; then
  echo 'err: please install git'
  exit 1;
fi

cd $HOME
git clone https://github.com/teohm/dotfiles.git .dotfiles
git clone git@bitbucket.org:teohm/dotfiles-private.git .dotfiles/private

$HOME/.dotfiles/public/bin/dotfiles public private
