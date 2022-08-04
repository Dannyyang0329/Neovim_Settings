local tools = {}

local conf = require("modules.tools.config")

-- Required by telescope.nvim
tools["nvim-lua/plenary.nvim"] = { opt = false }

-- Find, Filter, Preview, Pick tool 
tools["nvim-telescope/telescope.nvim"] = {
	opt = true,
	module = "telescope",
	cmd = "Telescope",
	config = conf.telescope,
	requires = {
		{ "nvim-lua/plenary.nvim", opt = false },
		{ "nvim-lua/popup.nvim", opt = true },
	},
}

-- Fuzzy find
tools["nvim-telescope/telescope-fzf-native.nvim"] = {
	opt = true,
	run = "make",
	after = "telescope.nvim",
}

-- Manage project
tools["nvim-telescope/telescope-project.nvim"] = {
	opt = true,
	after = "telescope-fzf-native.nvim",
}

-- Frequent and recent file jump
tools["nvim-telescope/telescope-frecency.nvim"] = {
	opt = true,
	after = "telescope-project.nvim",
	-- requires = { { "tami5/sqlite.lua", opt = true } },
	requires = { { "kkharji/sqlite.lua", opt = true } },
}


-- zoxide is a smarter cd command
tools["jvgrootveld/telescope-zoxide"] = { opt = true, after = "telescope-frecency.nvim" }


-- Run code snippet quickly
tools["michaelb/sniprun"] = {
	opt = true,
	run = "bash ./install.sh",
	cmd = { "SnipRun", "'<,'>SnipRun" },
}

-- Displays a popup with possible key bindings of the command
tools["folke/which-key.nvim"] = {
	opt = true,
	keys = ",",
	config = conf.which_key,
}

-- Show code trouble
tools["folke/trouble.nvim"] = {
	opt = true,
	cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
	config = conf.trouble,
}

-- A more adventurous wildmenu
tools["gelguy/wilder.nvim"] = {
	event = "CmdlineEnter",
	config = conf.wilder,
	requires = { { "romgrk/fzy-lua-native", after = "wilder.nvim" } },
}

-- Profiling starup time quickly
tools["dstein64/vim-startuptime"] = { opt = true, cmd = "StartupTime" }

-- Easily speed up your neovim startup time
tools["nathom/filetype.nvim"] = {
	opt = false,
	config = conf.filetype,
}

return tools
