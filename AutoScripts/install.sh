#!/bin/bash

# Install lastest neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Install packer.vim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install nerd font
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
sudo unzip SourceCodePro -d /usr/share/fonts/SourceCodePro
cd /usr/share/fonts/SourceCodePro
sudo mkfontscale
sudo mkfontdir
sudo fc-cache -fv

# Install sqlite3 
sudo apt-get install sqlite3 libsqlite3-dev

# Install finding tool
sudo apt-get install ripgrep
sudo apt-get install fd-find
