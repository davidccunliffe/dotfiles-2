# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Give the source for the theme
ZSH_THEME=powerlevel10k/powerlevel10k

POWERLEVEL10K_DISABLE_CONFIGURATION_WIZARD=true

# export the Android SDK info for React Native apps
# export ANDROID_HOME=~/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# setup default AWS Profile
AWS_DEFAULT_PROFILE='default'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)

# give plugin sources. These have to be given manually because we are using brew to manage them
# source /usr/local/opt/zsh-syntax-highlighting

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git node npm brew sudo alias-tips z zsh-autosuggestions zsh-syntax-highlighting terraform git-open)


# User configuration
export PATH=/usr/local/sbin:$PATH
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# VIM stuff
# Sets fuzzy finder's default search function to AG, silver searcher
# It also sets a global ignore, to ignore things like node_modules. By default it will ignore stuff in
# the .gitignore file in the pwd, but if you are nested it doesn't. This is a workaround.
# export FZF_DEFAULT_COMMAND='ag --path-to-ignore ~/dotfiles/ag/.ignore -l --nogroup --nocolor --hidden'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'


# source the aliases
source "$HOME/dotfiles/zsh/aliases.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# LESS Stuff
#export LESSOPEN="| $(which highlight) %s --out-format xterm256 --line-numbers --quiet --force --style solarized-light"
#export LESS=" -R"
export PAGER=/usr/local/bin/vimpager
