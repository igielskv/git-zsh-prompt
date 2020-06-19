# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/manoli/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

# git prompt support
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
precmd () { __git_ps1 "%F{green}%n@%m%f %F{blue}%1~%f %F{magenta}%B" "%b%f%# " "(%s) " }
