vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer
    use { "wbthomason/packer.nvim" }

    -- Completion & Language sercer
    use { "neovim/nvim-lspconfig" }
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    use { "WhoIsSethDaniel/mason-tool-installer.nvim" }
    use { "glepnir/lspsaga.nvim" }
    use { "ray-x/lsp_signature.nvim" }
    use { "hrsh7th/nvim-cmp",
        requires = {
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-nvim-lua" },
            { "hrsh7th/cmp-cmdline" },
        },
    }
    use { "L3MON4D3/LuaSnip",
        requires = { "rafamadriz/friendly-snippets" },
    }
    use { "windwp/nvim-autopairs" }
    use { "github/copilot.vim" }

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
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

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
