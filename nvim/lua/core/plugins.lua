vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer
    use { "wbthomason/packer.nvim" }

    -- Editor
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use { "RRethy/vim-illuminate" }
    use { "JoosepAlviste/nvim-ts-context-commentstring" }
    use { "terrortylor/nvim-comment" }
    use { "p00f/nvim-ts-rainbow" }
    use { "windwp/nvim-ts-autotag" }
    use { "karb94/neoscroll.nvim" }
    use { "akinsho/toggleterm.nvim" }
    use { "norcalli/nvim-colorizer.lua" }
    use { "sindrets/diffview.nvim" }


    -- Tools
    use { "nvim-lua/popup.nvim" }
    use { "nvim-lua/plenary.nvim" }
    use { "kkharji/sqlite.lua" }
    use { "nvim-telescope/telescope.nvim" }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = 'make'}
    use { "nvim-telescope/telescope-project.nvim" }
    use { "nvim-telescope/telescope-frecency.nvim" }
    use { "jvgrootveld/telescope-zoxide" }
    use { "michaelb/sniprun", run = "bash ./install.sh" }
    use { "folke/which-key.nvim" }
    use { "folke/trouble.nvim" }
    use { "gelguy/wilder.nvim", 
        requires = { { "romgrk/fzy-lua-native", after = "wilder.nvim" } },
    }

    -- UI
    use { "kyazdani42/nvim-web-devicons" }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "rcarriga/nvim-notify" }
    use { "kyazdani42/nvim-tree.lua" }
    use { "hoob3rt/lualine.nvim" }
    use { "goolord/alpha-nvim" }
    use { "lewis6991/gitsigns.nvim" }
    use { "lukas-reineke/indent-blankline.nvim" }
    use { "kdheepak/tabline.nvim" }

end)
