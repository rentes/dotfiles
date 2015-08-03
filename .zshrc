# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# simples -> ZSH_THEME="Soliah"
# ZSH_THEME="evan"
DEFAULT_USER="miguel"
# ZSH_THEME="dieter"
# ZSH_THEME="superjarin"
#ZSH_THEME="ys"
ZSH_THEME="agnoster"
#ZSH_THEME="pygmalion"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git tmuxinator)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/home/miguel/.gem/ruby/2.2.0/bin:/home/miguel/.gem/ruby/2.1.0/bin:$PATH"
export PULSE_LATENCY_MSEC=60
alias pacman="sudo -E pacman"
alias gem="sudo -E gem"
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_25
source /usr/bin/virtualenvwrapper.sh
alias ls="ls -h --color=auto"

export TERM="xterm-256color"
export EDITOR="emacs -nw"

export RAILS_ENV="production"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export rvm_ignore_gemrc_issues=1 # to avoid warning
export RI="--format ansi --width 80" # ri customizations
export NMON="d"
source ~/.rvm/scripts/rvm
source ~/.gem/ruby/2.2.0/gems/tmuxinator-0.6.11/completion/tmuxinator.zsh

# if starting for the first time, launch tmuxinator with office profile
if [ "$(tmux ls >& /dev/null | cut -d ' ' -f 1)" != "office:" ]; then
mux start office
fi
