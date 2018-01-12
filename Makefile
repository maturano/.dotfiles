DIR=$(HOME)/.dotfiles

all: symlinks

symlinks:
	@ln -shfv $(DIR)/zshrc    	~/.zshrc
	@ln -shfv $(DIR)/gitignore	~/.gitignore
	@ln -shfv $(DIR)/gitconfig	~/.gitconfig
