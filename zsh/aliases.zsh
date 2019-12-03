# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# app opening aliases
alias code='code .'

# Silver searcher ignore file link
alias ag='ag --path-to-ignore ~/dotfiles/ag/.ignore'

# LS lists information about files.
# show slashes for directories.
alias ls='ls -laF'
# long list format including hidden files and include unit size
alias ll='ls -la'


alias kll='kill -9'
alias md='mkdir'
# alias fm='ps aux | grep mongo'
# alias code='cd ~/code/'

# Less syntax highlighting - insure you have source-highlight installed
# (brew install source-highlight)
#alias less='less -m -N -g -i -J --underline-special --SILENT'
#alias more='less'

alias less=$PAGER
alias more=$PAGER

# Use "highlight" in place of "cat"
alias cat="highlight $1 --out-format xterm256 --line-numbers --quiet --force --style solarized-light"

# search all aliases
# falias "word to search for"
alias falias='alias | grep '

alias refrash='source ~/.bash_profile'

#finding folders fast
alias desk='cd ~/Desktop'
alias gitl='git log --pretty=oneline'
alias lgl='git log --oneline --decorate'
alias ..='cd ../'

# go back one directory
alias b='cd ..'
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

alias src='cd ~/src'
alias glog='git log --pretty=oneline --abbrev-commit'

# History lists your previously entered commands
alias h='history'

# confirm before executing and be verbose
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'

# =================
# Additional Aliases
# =================

# Hide/show all desktop icons (useful when presenting)
alias hide_desktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias show_desktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Hide/show hidden files in Finder
alias hide_files="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias show_files="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"

# ================
# Application Aliases
# ================
alias chrome='open -a "Google Chrome"'

# http://jorge.fbarr.net/2011/03/24/making-your-bash-history-more-efficient/
# Larger bash history (allow 32Â³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE

# don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# Make some commands not show up in history
export HISTIGNORE="h"

# ====================
# Git Aliases
# ====================
alias gs='git status'
alias gap='git add -p'
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gacm='git add . && git commit -m '
alias gd='git diff'
alias go='git checkout '
alias gob='git checkout -b '
alias gk='gitk --all&'
alias gx='gitx --all'
alias glog='git log --pretty=oneline --abbrev-commit'
alias up='git pull upstream master'
# when I mispell git commands the following 2 commands help
alias got='git '
alias get='git '
alias gopen='git-open'

# =====================
# Generic Aliases
# =====================
alias zash='vim ~/dotfiles/zshrc'
alias vimrc='vim ~/dotfiles/vimrc'
alias zfrash='source ~/dotfiles/zshrc'
export PATH="/usr/local/sbin:$PATH"

alias journal='touch ~/journal/$(date +%F)-Journal.log && vim ~/journal/$(date +%F)-Journal.log'
