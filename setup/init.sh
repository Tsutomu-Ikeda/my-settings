#!/usr/bin/env bash
# Prefix
_INFO=$(printf "\e[1;34m::\e[m")
_TASK=$(printf "\e[1;32m=>\e[m")
_ERROR=$(printf "\e[1;31m!!\e[m")
#---------------------------------------
cd "$(dirname "$0")"
set -e

echo "$_INFO Setup fzf..."
if [ ! -d ~/.fzf ]; then
    git clone https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all --no-bash --no-fish
fi

echo "$_INFO Setup Antigen..."
if [ ! -d ~/.antigen ]; then
    mkdir -p ~/.antigen
    curl -L git.io/antigen > ~/.antigen/antigen.zsh
    if [ $(which zsh) ]; then
        zsh -c "source ~/.zshrc && exit 0"
    fi
fi

echo "$_INFO Setup tpm..."
if [ ! -d ~/.tmux/plugins/tpm ]; then
    mkdir -p ~/.tmux/plugins/tpm
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "$_INFO Setup vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "$_TASK Executing: 'vim -c :PlugInstall'"
vim -c ':PlugInstall' -c ':q' -c ':q'
echo "$_INFO Installed vim packages"
