#!/bin/bash

# Need git and neovim
if ! dpkg-query -W git > /dev/null  ; then 
    echo "Need package : git"
    exit 1
elif ! dpkg-query -W neovim > /dev/null  ; then 
    echo "Need package : neovim"
    exit 1
else
    if [ -e "~/.config/nvim" -a -d "~/.config/nvim" ]; then
        echo "!/.config/nvim is exist. Please make a backup or delete it."
    else
        # apply setting
        cp -r ~/Neovim_Settings/nvim ~/.config/nvim

        nvim -c :PackerSync

        # change prompt style
        echo 'POWERLINE_SCRIPT=/usr/share/powerline/bindings/bash/powerline.sh' >> ~/.bashrc
        echo 'if [ -f $POWERLINE_SCRIPT ]; then' >> ~/.bashrc
        echo '  source $POWERLINE_SCRIPT' >> ~/.bashrc
        echo 'fi' >> ~/.bashrc
        source ~/.bashrc

        echo "Finishing!"
    fi
fi

