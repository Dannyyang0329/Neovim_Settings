vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use { "wbthomason/packer.nvim" }

    use { "nvim-lua/plenary.nvim" }

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
