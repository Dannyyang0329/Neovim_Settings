#!/bin/bash

# Version variables
NEOVIM_VERSION=0.7.0
NVM_VERSION=0.39.1
NODE_VERSION=16.0.0


# Check this script is begin run in the 'AutoScripts' folder
if ! [[ "${PWD}" == */AutoScripts ]]; then
    echo '[ERR] Please run the installation script within the "AutoScripts" folder.'
    echo '    [CMD] cd ~/Neovim_settings/AutoScripts/ && ./install.sh'
    exit 1
fi

# Check if nvim config is exist
if [ -f ~/.config/nvim/init.vim ]; then
    echo '[ERR] Neovim init config file is existing in ~/.config/nvim/. Please backup or remove it'
    echo '    [CMD] rm -rf ~/.config/nvim/ ' # remove
    echo '    [CMD] mv ~/.config/nvim/ ~/.config/nvim_backup' # backup
    exit 1
fi

# Installing dependencies
echo '[MSG] Installing dependencies ...'
sudo apt-get update > /dev/null 2>&1
sudo apt-get install wget curl npm git build-essential ripgrep python3 python3-pip python3-venv -y > /dev/null 2>&1


# Make Neovim config directory
echo '[MSG] Creating Neovim config directory ...'
mkdir -p ~/.config/nvim/


# Installing neovim
echo "[MSG] Installing neovim $NEOVIM_VERSION ..."
echo "[MSG] Downloading nvim-linux64.tar.gz for Neovim ${NEOVIM_VERSION} ..."
wget "https://github.com/neovim/neovim/releases/download/v$NEOVIM_VERSION/nvim-linux64.tar.gz" -O /tmp/nvim-linux64.tar.gz > /dev/null 2>&1
mkdir -p ~/.local/bin
tar xf /tmp/nvim-linux64.tar.gz -C ~/.local > /dev/null 2>&1
ln -sf $(readlink -f ~/.local/nvim-linux64/bin/nvim) ~/.local/bin/nvim > /dev/null 2>&1


# Installing nvm, node, npm, language servers
echo "[MSG] Installing Node Version Manager (nvm) ${NVM_VERSION} ..."
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v$NVM_VERSION/install.sh" > /dev/null 2>&1 | bash > /dev/null 2>&1
source ~/.bashrc
echo "[MSG] Installing node ${NODE_VERSION} ..."
nvm install ${NODE_VERSION} > /dev/null 2>&1
echo "[MSG] Setting npm config to use ~/.local as prefix ..."
sudo apt-get install clangd > /dev/null 2>&1
npm config set prefix '~/.local/' > /dev/null 2>&1 


# Install virtualenv to containerize dependencies for vim-pydocstring (doq) and formatting feature (pynvim for black plugin)
echo '[MSG] Installing Python dependencies in a virtual environment ...'
python3 -m venv ~/.config/nvim/env > /dev/null 2>&1
source ~/.config/nvim/env/bin/activate
pip install wheel pynvim doq > /dev/null 2>&1
deactivate


# Install vim-plug plugin manager
echo '[MSG] Installing vim-plug'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' > /dev/null 2>&1


# Running PlugInstall
echo -e '[MSG] Running :PlugInstall within nvim ...'
sed '/call plug#end/q' ../init.vim > ~/.config/nvim/init.vim
nvim -c 'PlugInstall' -c 'qa' > /dev/null 


# Copy init.vim and lua scripts in current working directory to nvim's config location
echo '[MSG] Copying init.vim & lua/ -> ~/.config/nvim/'
cp -r ../init.vim ../lua/ ~/.config/nvim/


echo '[MSG] Finishing! You can change font now!'

