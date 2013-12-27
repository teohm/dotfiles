# teohm's dotfiles

## dependencies

### required
```
brew install stow git

sudo apt-get install stow git
```

### optional
```
brew install chruby
brew install ruby-install
brew install the_silver_searcher
brew install bash-completion
brew install autojump
brew install sshuttle
```

## install
```
cd ~
git clone https://github.com/teohm/dotfiles.git .dotfiles
~/.dotfiles/setup.sh

# -or-

bash < <(wget -qO - https://raw.github.com/teohm/dotfiles/master/install.sh)

bash < <(curl -s https://raw.github.com/teohm/dotfiles/master/install.sh)


```

## pull updates from my repo
```
~/.dotfile/update.sh
```

## update subtrees e.g. `.vim/bundle`
```
# add entry in ~/.dotfiles/.gittrees
# make sure working directory is clean.

~/.dotfile/update_subtrees.sh
```
