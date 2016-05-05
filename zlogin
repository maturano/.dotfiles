[[ -d "$HOME/.dotfiles/_bin/" ]]  && export PATH="$PATH:$HOME/.dotfiles/_bin/"
[[ -f "$HOME/.local.env" ]]  && source "$HOME/.local.env"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
