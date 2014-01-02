# teohm's dotfiles

## dependencies

### required
```
brew install stow git

# sudo add-apt-repository ppa:git-core/ppa
# sudo apt-get update
sudo apt-get install stow git
## Enable git subtree
# sudo chmod +x /usr/share/doc/git/contrib/subtree/git-subtree.sh
# sudo ln -s /usr/share/doc/git/contrib/subtree/git-subtree.sh /usr/lib/git-core/git-subtree
```

### optional
```
brew install macvim
brew install the_silver_searcher
brew install bash-completion
brew install tmux
brew install autojump
brew install sshuttle
brew install chruby
brew install ruby-install


sudo apt-get install vim-nox
sudo apt-get install silversearcher-ag
sudo apt-get install bash-completion
sudo apt-get install tmux
sudo apt-get install autojump
sudo apt-get install sshuttle
#chruby
#ruby-install
```

## install
```
cd ~
git clone https://github.com/teohm/dotfiles.git .dotfiles
~/.dotfiles/public/bin/dotfiles public

# -or-

bash < <(wget -qO - https://raw.github.com/teohm/dotfiles/master/install.sh)

bash < <(curl -s https://raw.github.com/teohm/dotfiles/master/install.sh)
```

## pull updates from my repo
```
cd ~/.dotfiles
git pull origin master
dotfiles public
```

## update subtrees e.g. `.vim/bundle`
```
# add entry in ~/.dotfiles/.gittrees
# make sure working directory is clean.

cd ~/.dotfiles
gittrees-update

dotfiles public
```
