local global = require("core.global")
local vim = vim    -- vim module

-- Create cache dir and subs dir
local createdir = function()
	local data_dir = {
		global.cache_dir .. "backup",
		global.cache_dir .. "session",
		global.cache_dir .. "swap",
		global.cache_dir .. "tags",
		global.cache_dir .. "undo",
	}

    -- Check "cache_dir" exists or not
	if vim.fn.isdirectory(global.cache_dir) == 0 then
        -- Create folder is cache_dir is not exist
		os.execute("mkdir -p " .. global.cache_dir)
		for _, v in pairs(data_dir) do
            -- Create subfolder declaring above if it isn't exist
			if vim.fn.isdirectory(v) == 0 then
				os.execute("mkdir -p " .. v)
			end
		end
	end
end

-- Declaring global variables
local disable_distribution_plugins = function()
	vim.g.did_load_filetypes = 1
	vim.g.did_load_fzf = 1
	vim.g.did_load_gtags = 1
	vim.g.did_load_gzip = 1
	vim.g.did_load_tar = 1
	vim.g.did_load_tarPlugin = 1
	vim.g.did_load_zip = 1
	vim.g.did_load_zipPlugin = 1
	vim.g.did_load_getscript = 1
	vim.g.did_load_getscriptPlugin = 1
	vim.g.did_load_vimball = 1
	vim.g.did_load_vimballPlugin = 1
	vim.g.did_load_matchit = 1
	vim.g.did_load_matchparen = 1
	vim.g.did_load_2html_plugin = 1
	vim.g.did_load_logiPat = 1
	vim.g.did_load_rrhelper = 1
	vim.g.did_load_netrw = 1
	vim.g.did_load_netrwPlugin = 1
	vim.g.did_load_netrwSettings = 1
	vim.g.did_load_netrwFileHandlers = 1
end

local leader_map = function()
	vim.g.mapleader = ","
	vim.api.nvim_set_keymap("n", " ", "", { noremap = true })
	vim.api.nvim_set_keymap("x", " ", "", { noremap = true })
end

local neovide_config = function()
	vim.cmd([[set guifont=SauceCodePro\ Nerd\ Font\ Mono:h16]])
	vim.g.neovide_refresh_rate = 120
	vim.g.neovide_cursor_vfx_mode = "railgun"
	vim.g.neovide_no_idle = true
	vim.g.neovide_cursor_animation_length = 0.03
	vim.g.neovide_cursor_trail_length = 0.05
	vim.g.neovide_cursor_antialiasing = true
	vim.g.neovide_cursor_vfx_opacity = 200.0
	vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
	vim.g.neovide_cursor_vfx_particle_speed = 20.0
	vim.g.neovide_cursor_vfx_particle_density = 5.0
end

local load_core = function()
	local pack = require("core.pack")
	createdir()
	disable_distribution_plugins()
	leader_map()

	pack.ensure_plugins()
	neovide_config()

	require("core.options")
	require("core.mapping")
	require("keymap")
	require("core.event")
	pack.load_compile()

	vim.cmd([[colorscheme catppuccin]])
    vim.cmd([[highlight IndentBlanklineContextChar guifg=#F2E767]])
end

load_core()
