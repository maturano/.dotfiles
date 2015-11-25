source $HOME/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen theme agnoster
export DEFAULT_USER=$(whoami)

antigen apply
