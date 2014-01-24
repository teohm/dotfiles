#!/usr/bin/env bash

set -e

echo "install homebrew & git"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install git

cd $HOME
echo "clone .dotfiles"
git clone https://github.com/teohm/dotfiles.git .dotfiles
git clone git@bitbucket.org:teohm/dotfiles-private.git .dotfiles/private

echo "brew bundle"
brew bundle $HOME/.dotfiles/Brewfile

echo "symlink dotfiles"
stow -d $HOME/.dotfiles public private
