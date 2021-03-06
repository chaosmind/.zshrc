# Path to your oh-my-zsh installation.
export ZSH=/home/rob/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dpoggi"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"
# Current Mac stuff for work, obviously brittle:
export PATH="/Users/rob/.sdkman/candidates/maven/current/bin:/Users/rob/.sdkman/candidates/groovy/current/bin:/Users/rob/.sdkman/candidates/gradle/current/bin:/Users/rob/.sdkman/candidates/springboot/current/bin:$PATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias omz="atom ~/.oh-my-zsh"
alias l="ls -halF"
alias l2="echo;ls -lhF;echo"
alias l3="echo;ls -hF -d1 --color=auto .*;echo"
alias ls="ls -hFG"
alias ll="ls -halF"
alias h="clear;pwd;echo;ls -halF;echo"  # Go Home
alias h2="clear;pwd;echo;ls -hF;echo"
alias h3="clear;pwd;echo;ls -ahF;echo"
alias ht="clear;pwd;echo;tree;echo"
alias htd="clear;pwd;echo;tree -d;echo"
alias iftop="sudo /usr/local/sbin/iftop"
alias jmeter="open /usr/local/bin/jmeter"
alias p="ps -ef | less"
alias c="grep -Ev '^#|^$'"  # Clean view of files
alias clean="grep -Ev '^#|^$'"
ql () { qlmanage -p "$*" >& /dev/null; } # ql:           Opens any file in MacOS Quicklook Preview
trash () { command mv "$@" ~/.Trash ; } # trash:        Moves a file to the MacOS trash
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update --system; sudo gem update'

# Lazy ancestor directory ziggurat of doom (from geeksam)
alias        ..='cd ..'
alias       ...='cd ../..'
alias      ....='cd ../../..'
alias     .....='cd ../../../..'
alias    ......='cd ../../../../..'
alias   .......='cd ../../../../../..'
alias  ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
