ZPLUG_REPOS="$HOME/.dotfiles/_vendor"
ZPLUG_HOME="$ZPLUG_REPOS/zplug/zplug"
ZPLUG="$ZPLUG_HOME/init.zsh"

if [ ! -f "$ZPLUG" ]; then
    git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi

source $ZPLUG

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context status background_jobs dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(node_version virtualenv rvm)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_package_name"
DEFAULT_USER=$USER
NVM_LAZY_LOAD=true
NVM_NO_USE=true



zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "bhilburn/powerlevel9k", as:theme
zplug "lukechilds/zsh-nvm"
zplug "johnhamelink/rvm-zsh"
zplug "horosgrisa/autoenv"
zplug "mchav/with", as:command, use:with

# Install plugins if there are plugins that have not been installed
zplug check || zplug install
zplug load


# Command history configuration
HISTFILE=$HOME/.private/shell_history

HISTSIZE=10000
SAVEHIST=10000

# history with format yyyy-mm-dd
alias history='fc -il 1'

setopt auto_cd
setopt append_history
setopt extended_history         # Record timestamp of command in HISTFILE
setopt hist_expire_dups_first   # Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups         # Ignore duplication command history list
setopt hist_ignore_space        # Ignore commands that start with space
setopt hist_verify
setopt inc_append_history       # Add commands to HISTFILE in order of execution
setopt share_history            # Share command history data


# Aliases
[[ -f ~/.dotfiles/shell_aliases ]] && source ~/.dotfiles/shell_aliases
