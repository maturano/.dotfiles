ZPLUG_HOME=$HOME/.dotfiles/_vendor/zplug

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context status background_jobs dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(node_version rvm)
POWERLEVEL9K_STATUS_VERBOSE=false
DEFAULT_USER=$USER

source $ZPLUG_HOME/init.zsh

zplug "bhilburn/powerlevel9k"
zplug "srijanshetty/node.plugin.zsh"
zplug "johnhamelink/rvm-zsh"
zplug "horosgrisa/autoenv"


# Install plugins if there are plugins that have not been installed
zplug check  || zplug install

zplug load


# Command history configuration
HISTFILE=$HOME/.private/shell_history

HISTSIZE=10000
SAVEHIST=10000

# history with format yyyy-mm-dd
alias history='fc -il 1'

setopt append_history
setopt extended_history         # Record timestamp of command in HISTFILE
setopt hist_expire_dups_first   # Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups         # Ignore duplication command history list
setopt hist_ignore_space        # Ignore commands that start with space
setopt hist_verify
setopt inc_append_history       # Add commands to HISTFILE in order of execution
setopt share_history            # Share command history data


# Aliases
[ -f ~/.dotfiles/shell_aliases ] && . ~/.dotfiles/shell_aliases
