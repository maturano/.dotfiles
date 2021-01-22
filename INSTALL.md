## Software

# Slack, firefox, vscode, alacritty, OpenVPN

sudo apt update
sudo apt upgrade
sudo apt install build-essential curl file fontconfig git tmux vim zsh openvpn

# brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/maturanomx/.profile
# eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew install gcc


mkdir $HOME/.private
mkdir -p $HOME/.local/share/fonts
touch $HOME/.private/{gitconfig,shell_history}

git clone git@github.com:maturanomx/.dotfiles.git

cp $HOME/.dotfiles/fonts/* $HOME/.local/share/fonts/

fc-cache -vf $HOME/.local/share/fonts/

ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/Xresources $HOME/.Xresources
ln -s $HOME/.dotfiles/config/nvim $HOME/.config/
ln -s $HOME/.dotfiles/config/nvim $HOME/.vim
ln -s $HOME/.dotfiles/config/nvim/init.vim $HOME/.vimrc

chsh -s $(which zsh) $USER

zsh

nvm install --lts
