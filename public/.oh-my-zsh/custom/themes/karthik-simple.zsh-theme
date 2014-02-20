# ------------------------------------------------------------------------
# Karthik.T oh-my-zsh theme
# (Needs Gitfast plugin for __git_ps1, and Git plugin for other commands)
#
# Using http://www.opensource.apple.com/source/zsh/zsh-42/zsh/Misc/bash2zshprompt 
# to convert from my bash prompt (think i took that from 
#	http://www.codeography.com/2009/05/26/speedy-bash-prompt-git-and-subversion-integration.html or similar)
# used juanghurtado as base
# ------------------------------------------------------------------------

# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
RESET_COLOR=$reset_color

# # Format for git_prompt_info()
# ZSH_THEME_GIT_PROMPT_PREFIX=""
# ZSH_THEME_GIT_PROMPT_SUFFIX=""

# # Format for parse_git_dirty()
# ZSH_THEME_GIT_PROMPT_DIRTY=" %{$RED%}(*)"
# ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}unmerged"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}deleted"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW%}renamed"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW%}modified"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}added"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$WHITE%}untracked"

scm_ps1() {
    local s=
    local u=
    if [[ -d ".svn" ]] ; then
        s=\(r$(svn info | sed -n -e '/^Revision: \([0-9]*\).*$/s//\1/p' )\)
    else
        s=$(__git_ps1 "(%s)")
        #status=$(git status 2>/dev/null | tail -n 1)
        #if [[ $status != "" ]]
        #then
        #    u=$(git-unpushed)
        #fi
        
    fi
    echo -n "$s"
}

# this lets git ps1 show dirty state - * for dirty and + for staged
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=verbose
GIT_PS1_SHOWUNTRACKEDFILES=1
# Prompt format
PROMPT="
$prompt_newline%{$reset_color$fg[green]%}%n%{$reset_color$fg[green]%}@%{$reset_color$fg[green]%}%m:%{$reset_color$fg[white]%}%~ %{$reset_color$fg[cyan]%}\$(scm_ps1)%{$reset_color%}
$prompt_newline$%{$reset_color%} "

#this makes things slow
#RPROMPT='%{$reset_color$fg[green]%}$(current_branch)$(git_prompt_status)%{$reset_color%}'