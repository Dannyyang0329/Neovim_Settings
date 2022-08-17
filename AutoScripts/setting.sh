#!/bin/bash

# Need git and neovim
if ! dpkg-query -W git > /dev/null  ; then 
    echo "Need package : git"
    exit 1
elif ! dpkg-query -W neovim > /dev/null  ; then 
    echo "Need package : git"
    exit 1
else
    if [ -e "~/.config/nvim" -a -d "~/.config/nvim" ]; then
        echo "!/.config/nvim is exist. Please make a backup or delete it."
    else
        # get the setting from git
        git clone https://github.com/Dannyyang0329/Neovim_Settings.git
        
        # apply setting
        cp -r nvim ~/.config/nvim

        vim -c :PackerSync

        echo "Finishing!"
    fi
fi

