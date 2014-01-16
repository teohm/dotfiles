#!/usr/bin/env bash

set -e

if which git; then
  echo 'err: please install git'
  exit 1;
fi

if which stow; then
  echo 'err: please install stow'
  exit 1;
fi

cd $HOME
git clone https://github.com/teohm/dotfiles.git .dotfiles
git clone git@bitbucket.org:teohm/dotfiles-private.git .dotfiles/private

stow -d $HOME/.dotfiles public private
