#!/bin/bash

. "$( pwd )/utils.sh"
PROMPT='[ Bootstrap ]'

source .exports

init () {
	echo_with_prompt "Making a Projects folder in $PATH_TO_PROJECTS if it doesn't already exist"
	mkdir -p "$PATH_TO_PROJECTS"
	echo_with_prompt "Making a Playground folder in $PATH_TO_PLAYGROUND if it doesn't already exist"
	mkdir -p "$PATH_TO_PLAYGROUND"
}

install_tools () {
	echo_with_prompt "Execute utilities installation with apt..."
	echo_with_prompt "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ]; then
		echo_with_prompt "Installing useful program using apt. This may take awhile..."
		sudo sh apt.sh
	else
		echo_with_prompt "Apt installation cancelled by user"
	fi
}

init
install_tools

ln -sfnv "$PWD/.bashrc" "$HOME" || true
ln -sfnv "$PWD/.config/tmux" "$HOME/.config/tmux" || true
ln -sfnv "$PWD/.config/nvim" "$HOME/.config/nvim" || true
ln -sfnv "$PWD/.config/alacritty" "$HOME/.config/alacritty" || true

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
