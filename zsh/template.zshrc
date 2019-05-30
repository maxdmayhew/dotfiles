# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/mmayhew6/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# looking in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  composer
  completion
  node
  npm
  gulp
)

source $ZSH/oh-my-zsh.sh

# User configuration
# Aliases

#open sublime file from terminal
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

#drush n such
alias dcc="drush cc all"

export PATH="$PATH:/Applications/DevDesktop/tools"

#composer
alias composer="/Users/mmayhew6/composer.phar"

# Extras Below

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# MAY UPDATE THIS LATER
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"



# possible keybinds.sh not sure if I will end up using them
# # home
# 	function goto_home() { 
# 		BUFFER="cd ~/"$BUFFER
# 		zle end-of-line
# 		zle accept-line
# 	}
# 	zle -N goto_home
# 	bindkey "^h" goto_home


# # up
# 	function up_widget() {
# 		BUFFER="cd .."
# 		zle accept-line
# 	}
# 	zle -N up_widget
# 	bindkey "^k" up_widget


# # LS
# 	function ctrl_l() {
# 		BUFFER="ls"
# 		zle accept-line
# 	}
# 	zle -N ctrl_l
# 	bindkey "^l" ctrl_l
