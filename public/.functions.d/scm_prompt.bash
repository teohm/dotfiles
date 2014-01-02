# Basic svn & git bash prompt
#
# References:
#   http://www.codeography.com/2009/05/26/speedy-bash-prompt-git-and-subversion-integration.html
#   http://superuser.com/questions/288438/bash-completion-for-commands-in-mac-os
#
# Dependencies:
#   brew install git              # to get __git_ps1 in git_completion.sh
#   brew install bash-completion  # to load git_completion.sh

# Customize __git_ps1()
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=auto    # auto,verbose,legacy,svn,git

# Print scm info
scm_prompt() {
  if [[ -d ".svn" ]] ; then
    s=\[r$(svn info | sed -n -e '/^Revision: \([0-9]*\).*$/s//\1/p' )\]
  else
    s=$(__git_ps1 "[%s]")
  fi
  echo -n "$s"
}
