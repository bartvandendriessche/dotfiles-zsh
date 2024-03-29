# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="blinks"

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
# COMPLETION_WAITING_DOTS="true"

# Export some stuff we want available during plugin loading:
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export LANG=en_US.UTF-8
#export TERM=xterm-256color

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
export FZF_BASE=/opt/homebrew/Cellar/fzf/0.35.1
plugins=(brew pod bundler gem fzf asdf)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export ALTERNATE_EDITOR="" # this makes emacsclient start a daemon
                           # if not already running

alias emacs="emacsclient -t"

# source nvm, the node version manager
if [[ -a ~/.nvm/nvm.sh ]] then
    source ~/.nvm/nvm.sh
fi

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Make libffi available to ruby gems
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

# workflow aliases
alias regen='xcodegen generate; bundle exec pod install'
alias mock='swiftymocky generate'
alias format='Pods/SwiftFormat/CommandLineTool/swiftformat --config .swiftformat .'
