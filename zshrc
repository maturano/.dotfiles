ZPLUG_HOME=$HOME/.dotfiles/_vendor/zplug

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context status background_jobs dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(node_version rvm)
POWERLEVEL9K_STATUS_VERBOSE=false
DEFAULT_USER=$USER

source $ZPLUG_HOME/init.zsh

zplug "bhilburn/powerlevel9k"
zplug "srijanshetty/node.plugin.zsh"
zplug "johnhamelink/rvm-zsh"


# Install plugins if there are plugins that have not been installed
zplug check  || zplug install

zplug load
