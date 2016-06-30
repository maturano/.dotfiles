export ZPLUG_HOME=$HOME/.dotfiles/_vendor/zplug
source $ZPLUG_HOME/init.zsh


zplug "themes/agnoster", from:oh-my-zsh
zplug "srijanshetty/node.plugin.zsh"


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
