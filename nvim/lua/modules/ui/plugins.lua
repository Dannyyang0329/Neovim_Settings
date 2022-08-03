local ui = {}
local conf = require("modules.ui.config")

-- Provide icon support
ui["kyazdani42/nvim-web-devicons"] = { opt = false }

-- A fast and fully customizable greeter for neovim.
ui["goolord/alpha-nvim"] = {
	opt = true,
	event = "BufWinEnter",
	config = conf.alpha,
}

-- A soothing pastel dark theme
ui["catppuccin/nvim"] = {
	opt = false,
	as = "catppuccin",
	commit = "f079dda3dc23450d69b4bad11bfbd9af2c77f6f3",
	config = conf.catppuccin,
}

-- Notify with animation
ui["rcarriga/nvim-notify"] = {
	opt = false,
	config = conf.notify,
}

-- Customizable status line in bottom
ui["hoob3rt/lualine.nvim"] = {
	opt = true,
	after = "nvim-gps",
	config = conf.lualine,
}

-- Show current context in lualine
ui["SmiteshP/nvim-gps"] = {
	opt = true,
	after = "nvim-treesitter",
	config = conf.nvim_gps,
}

-- Show file structure tree
ui["kyazdani42/nvim-tree.lua"] = {
	opt = true,
	cmd = { "NvimTreeToggle" },
	config = conf.nvim_tree,
}

-- Tab/Tabline and buffer management
ui["akinsho/bufferline.nvim"] = {
	opt = true,
	tag = "*",
	event = "BufReadPost",
	config = conf.nvim_bufferline,
}

-- Show git status in nvim
ui["lewis6991/gitsigns.nvim"] = {
	opt = true,
	event = { "BufReadPost", "BufNewFile" },
	config = conf.gitsigns,
	requires = { "nvim-lua/plenary.nvim", opt = true },
}

-- Show indent with different level
ui["lukas-reineke/indent-blankline.nvim"] = {
	opt = true,
	event = "BufReadPost",
	config = conf.indent_blankline,
}

-- Provide scrollable scrollbar
ui["dstein64/nvim-scrollview"] = {
	opt = true,
	event = { "BufReadPost" },
	config = conf.scrollview,
}

return ui
