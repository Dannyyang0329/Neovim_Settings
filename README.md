# Neovim_Settings

## Introduction
This is the setting of my neovim with a lot of usefull plugins.

Notice : the version of neovim should be >= `0.8.0`


## Install

Install git for cloning the repository  
```
sudo apt-get install git
```

Get this repository  
```
git clone https://github.com/Dannyyang0329/Neovim_Settings.git
```

Change current directory  
```
cd Neovim_Settings/AutoScripts/
```  

`init.sh` : Install necessary packages.  
```
./init.sh
```

`install.sh` : Install neovim and the packages the plugin needed  
```
./install.sh
```

`setting.sh` : Apply the setting  
```
./setting.sh
```

Open gnome-tweak to change the caps behavior and font
```
Keyboard & Mouse
-> Addition Layout Options
-> Caps Lock behavior 
-> Make Caps Lock an additional Esc
```
```
Fonts
-> Monospace Text
-> SauceCodePro NF Regular 18
```

**Notice : When first open neovim editor, you should wait about 1 minute to let `mason` installing LSP.**


## Structure 

`init.lua` is the file that requires the configuration in `lua` folder.
```
lua 
├── core
│   ├── event.lua                       --> neovim event handler
│   ├── init.lua                        --> loading configuration in this folder
│   ├── mappings.lua                    --> original mapping
│   ├── options.lua                     --> neovim vanilla setting
│   ├── plugin_mappings.lua             --> plugins mapping
│   └── plugins.lua                     --> install plugins
└── modules
    ├── completion_and_language_server
    ├── editor
    ├── tools
    └── ui
```

<details>
    <summary>See full structure</summary>

    .
    ├── AutoScripts
    │   ├── init.sh
    │   └── install.sh
    ├── nvim
    │   ├── init.lua
    │   ├── lua
    │   │   ├── core
    │   │   │   ├── event.lua
    │   │   │   ├── init.lua
    │   │   │   ├── mappings.lua
    │   │   │   ├── options.lua
    │   │   │   ├── plugin_mappings.lua
    │   │   │   └── plugins.lua
    │   │   └── modules
    │   │       ├── completion_and_language_server
    │   │       │   ├── init.lua
    │   │       │   ├── lspsaga_config.lua
    │   │       │   ├── luasnip_config.lua
    │   │       │   ├── mason_tool_installer_config.lua
    │   │       │   ├── nvim_autopairs_config.lua
    │   │       │   ├── nvim_cmp_config.lua
    │   │       │   └── nvim_lspconfig_config.lua
    │   │       ├── editor
    │   │       │   ├── illuminate_config.lua
    │   │       │   ├── init.lua
    │   │       │   ├── neoscroll_config.lua
    │   │       │   ├── nvim_colorizer_config.lua
    │   │       │   ├── nvim_comment_config.lua
    │   │       │   ├── nvim_treesitter_config.lua
    │   │       │   └── toggleterm_config.lua
    │   │       ├── tools
    │   │       │   ├── init.lua
    │   │       │   ├── sniprun_config.lua
    │   │       │   ├── telescope_config.lua
    │   │       │   ├── trouble_config.lua
    │   │       │   ├── which_key_config.lua
    │   │       │   └── wilder_config.lua
    │   │       └── ui
    │   │           ├── alpha_config.lua
    │   │           ├── catppuccin_config.lua
    │   │           ├── gitsigns_config.lua
    │   │           ├── indent_blankline_config.lua
    │   │           ├── init.lua
    │   │           ├── lualine_config.lua
    │   │           ├── nvim_notify_config.lua
    │   │           ├── nvim_tree_config.lua
    │   │           └── tabline_config.lua
    │   ├── my_snippets
    │   └── plugin
    │       └── packer_compiled.lua
    └── README.md

    11 directories, 40 files
</details>


## Customization
* Add plugin
    * Determine the plugin belongs to which categores
    * Add the plugin in `plugins.lua`  
    * Add configuration file if it need
    * Synchronization
        ```
        :PackerSync
        ```

        <details>
            <summary>Example</summary>
        For example, if I want to add "kdheepak/tabline.nvim" to ui

        * Add the plugin
            ![](https://i.imgur.com/BtM2D0v.png)
        * Add configuration
            ![](https://i.imgur.com/xZaUC3Z.png)
        * PackerSync
            ```
            :PackerSync
            ```
        </details>

* Change key mapping
    * Normal key mapping can be modified through `mapping.lua`
    * Plugin key mapping can be modified through `plugin_mappings.lua`


## Plugin

### Completion & LSP
|  Plugin  | Introduction |
| :-: | :-: |
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Neovim LSP configuration |
| [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) | Install and manage LSP |
| [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Required by mason.nvim |
| [WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Required by mason.nvim |
| [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) | Better lsp function |
| [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim) | Show signature when completing function parameters |
| [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Auto completion plugin for nvim |
| [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippets completion engine for nvim-cmp |
| [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Pairs completion |
| [github/copilot](https://github.com/github/copilot.vim) | Github Copilot |

### Editor
|  Plugin  | Introduction |
| :-: | :-: |
| [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate) | Highlight all the word under the cursor |
| [JoosepAlviste/nvim-ts-context-commentstring](JoosepAlviste/nvim-ts-context-commentstring) | Comment string |
| [terrortylor/nvim-comment](https://github.com/terrortylor/nvim-comment) | Quick comment |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Code highlighter |
| [p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow) | Rainbow brackets |
| [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Autoclose and autorename html tag |
| [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) | Smooth scroll |
| [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Toggle terminal |
| [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) | Show detected color |
| [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim) | Show git diff view |

### Tools
|  Plugin  | Introduction |
| :-: | :-: |
| [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Required by telescope.nvim |
| [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim) | Required by telescope.nvim |
| [kkharji/sqlite.lua](kkharji/sqlite.lua) | Required by telescope-frecency.nvim |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | An extendable fuzzy finder |
| [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | Fzf searching |
| [nvim-telescope/telescope-project.nvim](https://github.com/nvim-telescope/telescope-project.nvim) | Project searching |
| [nvim-telescope/telescope-frecency.nvim](https://github.com/nvim-telescope/telescope-frecency.nvim) | Search file with frequency |
| [jvgrootveld/telescope-zoxide](https://github.com/jvgrootveld/telescope-zoxide) | Jump to folder recored by zoxide |
| [michaelb/sniprun](https://github.com/michaelb/sniprun) | Run code snippet |
| [folke/which-key.nvim](https://github.com/folke/which-key.nvim) | Show key binding |
| [folke/trouble.nvim](https://github.com/folke/trouble.nvim) | Show code troubles |
| [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim) | A more adventurous wildmenu |
| [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Markdown preview in web |

### UI
|  Plugin  | Introduction |
| :-: | :-: |
| [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) | Provide icons |
| [catppuccin/nvim](https://github.com/catppuccin/nvim) | Default editor dark theme |
| [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify) | Notification with animation |
| [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) | File explorer |
| [hoob3rt/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line for Neovim |
| [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) | Dashboard for Neovim |
| [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Show git status in editor |
| [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Show indentation with different level |
| [kdheepak/tabline.nvim](https://github.com/kdheepak/tabline.nvim) | Tabline management |


## Plugin ScreenShots

### Completion & LSP

* Completion & LSP

    ![](https://i.imgur.com/bcv7LFO.png)

* Lsp signature

    ![](https://i.imgur.com/luewFrF.png)

* Copilot
    
    ![](https://i.imgur.com/JJ2VoXa.png)


### Editor

* Rainbow brackets & Show color

    ![](https://i.imgur.com/e94ZyZt.png)

* Float terminal

    ![](https://i.imgur.com/YULn75n.png)

### Tools

* Find file by telescope

    ![](https://i.imgur.com/MjPoMcA.png)

* Fine word 

    ![](https://i.imgur.com/9n8HbHb.png)

* Show Key mapping

    ![](https://i.imgur.com/I4Jlrg0.png)

* Run snippet

    ![](https://i.imgur.com/9DF5s3u.png)

* Trouble window

    ![](https://i.imgur.com/KBgC6WU.png)

### UI

* UI

    ![](https://i.imgur.com/v7s1Lwq.png)
    ![](https://i.imgur.com/4Irfoat.png)


## Mapping

* Normal mapping

    | Mode | Key | Function |
    | :--: | :-: | :------: |
    | Normal | \<C-h> | move to left window |
    | Normal | \<C-l> | move to right window |
    | Normal | \<C-j> | move to bottom window |
    | Normal | \<C-k> | move to top window |
    | Normal | \<C-a> | select all |
    | Normal | \<C-s> | save |
    | Normal | \<C-q> | save and quit |
    | Normal | \<C-c> | delete current buffer |
    | Insert | \<C-s> | save |
    | Insert | \<C-q> | save and quit |
    | Command | \<C-h> | move to left character |
    | Command | \<C-l> | move to right character |
    | Command | \<C-j> | move to first character |
    | Command | \<C-k> | move to last character |
    | Command | \<C-d> | Delete a character | |

    
* Plugin mapping
    
    Most of the command using comma `,` as a `<Leader>`.
    | Plugin | Mode | Key | Function |
    | :----: | :--: | :-: | :------: |
    | Copilot | Insert | \<C-y> | Using the suggestion code |
    | nvim-comment | Normal | \<Leader>/ | Comment current line |
    | nvim-comment | Visual | \<Leader>/ | Comment selected lines |
    | toggleterm | Normal | \<C-t> | Popup floating terminal |
    | diffview | Normal | \<Leader>dv | Open different view |
    | telescope | Normal | \<Leader>fp | Find or Create project |
    | telescope | Normal | \<Leader>fr | Find recent used file |
    | telescope | Normal | \<Leader>fo | Find old files |
    | telescope | Normal | \<Leader>ff | Find files |
    | telescope | Normal | \<Leader>fw | Find words |
    | telescope | Normal | \<Leader>fg | Find git files |
    | telescope | Normal | \<Leader>fz | Find zoxide list |
    | telescope | Normal | \<Leader>cs | Change colorscheme |
    | telescope | Normal | \<Leader>km | Show key mapping |
    | sniprun | Visual | \<Leader>r | Run selected snippet |
    | trouble | Normal | \<Leader>tr | Show trouble winodw |
    | nvim-tree | Normal | \<C-n> | Show file explorer |
    | tabline | Normal | \<Tab> | Move to next buffer |
    | tabline | Normal | \<S-Tab> | Move to preview buffer |
