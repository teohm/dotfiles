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

cd .dotfiles
git submodules update --init
stow all
```
OR

```
curl -L https://raw.github.com/teohm/dotfiles/master/install.sh | bash
```

## update
```
cd .dotfiles
git pull --recurse-submodules
stow all
```

OR

```
~/.dotfiles/update.sh
```

