# Why use .bashrc?
# Read: http://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/

# Loads all my bash functions
for f in ~/.functions.d/*.bash; do
  . $f;
done

# Adds Homebrew bins to PATH
if [[ -f /usr/local/bin/brew ]]; then
  # brew doctor says let'em load first!
  export PATH=/usr/local/bin:/usr/local/sbin:$PATH
  BREW_HOME=`brew --prefix`
  # tell brew cask to use /Applications
  export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi


# Adds NPM bins to PATH
export PATH=$PATH:/usr/local/share/npm/bin

# Loads chruby
if [[ -f /usr/local/share/chruby/chruby.sh ]]; then
  . /usr/local/share/chruby/chruby.sh
  . /usr/local/share/chruby/auto.sh # auto-load .ruby-version
fi

# Load aliases
[[ -f ~/.aliases ]] && . ~/.aliases


# Default editor is vi
export VISUAL=vi
export EDITOR=$VISUAL

# Add my bins to PATH
export PATH=~/bin:$PATH

# Use my own cacert.pem
# curl -O http://curl.haxx.se/ca/cacert.pem
#export SSL_CERT_FILE=~/.ssl/cacert.pem


if [[ -n $PS1 ]]; then
  : # interactive shell only

  [[ -s $BREW_HOME/etc/bash_completion ]] && . $BREW_HOME/etc/bash_completion
  [[ -s $BREW_HOME/etc/autojump.sh ]] && . $BREW_HOME/etc/autojump.sh

  # Customize my bash prompt
  export PS1="\[\033[0;36m\]\$(scm_prompt)\[\033[00;32m\]\u\[\033[00m\]:\W$ "
else
  : # non-interactive shell only
fi


if shopt -q login_shell ; then
  : # login shell only
else
  : # non-login shell only
fi

