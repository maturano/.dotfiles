ZPLUG_REPOS="$HOME/.dotfiles/_vendor"
ZPLUG_HOME="$ZPLUG_REPOS/zplug/zplug"
ZPLUG="$ZPLUG_HOME/init.zsh"
TMUX_PLUGIN_MANAGER_PATH="${ZPLUG_REPOS}"

if [ ! -f "$ZPLUG" ]; then
    echo "Asuming a clean environment"

    git clone https://github.com/zplug/zplug $ZPLUG_HOME
    git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGIN_MANAGER_PATH/tpm && $TMUX_PLUGIN_MANAGER_PATH/tpm/bin/install_plugins

    echo "Installing VIM plugins..."
    vim +VimEnter +PlugInstall +qall
fi

source $ZPLUG

NVM_LAZY_LOAD=true
NVM_NO_USE=true



zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "dracula/zsh", as:theme
zplug "rupa/z", use:z.sh
zplug "zpm-zsh/autoenv"
zplug "lukechilds/zsh-nvm"
zplug "stedolan/jq", from:gh-r, as:command, rename-to:jq
zplug "ericchiang/pup", from:gh-r, as:command
zplug "mchav/with", as:command, use:with

# Install plugins if there are plugins that have not been installed
zplug check || zplug install
zplug load

### Terminal colors
export CLICOLOR=1


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
setopt hist_ignore_all_dups     # If duplicate to be added, remove older instance in history
setopt hist_ignore_space        # Ignore commands that start with space
setopt hist_verify              # Upon history 'selection', require carriage return to execute
setopt inc_append_history       # Add commands to HISTFILE in order of execution
setopt share_history            # Share command history data


# Aliases
[[ -f ~/.dotfiles/shell_aliases ]] && source ~/.dotfiles/shell_aliases
