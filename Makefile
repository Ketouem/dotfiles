FILE_FOLDER = ./dotfiles

install:
	cp ./dotfiles/profile $$HOME/.profile
	cp ./dotfiles/bash_profile $$HOME/.bash_profile
	cp ./dotfiles/zshrc $$HOME/.zshrc
	cp ./dotfiles/vimrc $$HOME/.vimrc
	cp ./dotfiles/gitconfig $$HOME/.gitconfig
