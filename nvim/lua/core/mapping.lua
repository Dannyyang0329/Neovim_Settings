local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

-- default map
local def_map = {
	-- Vim map
	["n|<C-h>"] = map_cmd("<C-w>h"):with_noremap(),            -- Ctrl+h : move to left window
	["n|<C-l>"] = map_cmd("<C-w>l"):with_noremap(),            -- Ctrl+l : move to right window
	["n|<C-j>"] = map_cmd("<C-w>j"):with_noremap(),            -- Ctrl+j : move to bottom window
	["n|<C-k>"] = map_cmd("<C-w>k"):with_noremap(),            -- Ctrl+k : move to top window
	["n|<C-a>"] = map_cmd("ggVG"):with_noremap(),              -- Ctrl+a : select all
	["n|<C-o>"] = map_cmd("ggVGzO"):with_noremap(),            -- Ctrl+o : open all fold
	["n|<C-s>"] = map_cu("write"):with_noremap(),              -- Ctrl+s : save
	["n|<C-q>"] = map_cmd(":wq<CR>"),                          -- Ctrl+q : save and quit

-- Insert
	["i|<C-s>"] = map_cmd("<Esc>:w<CR>"),                      -- Ctrl+s : save
	["i|<C-q>"] = map_cmd("<Esc>:wq<CR>"),                     -- Ctrl+q : save and quit

-- command line
	["c|<C-h>"] = map_cmd("<Left>"):with_noremap(),            -- Ctrl+h : move left
	["c|<C-l>"] = map_cmd("<Right>"):with_noremap(),           -- Ctrl+l : move right
	["c|<C-j>"] = map_cmd("<Home>"):with_noremap(),            -- Ctrl+j : move left
	["c|<C-k>"] = map_cmd("<End>"):with_noremap(),             -- Ctrl+k : move to head
	["c|<C-d>"] = map_cmd("<BS>"):with_noremap(),              -- Ctrl+d : move to tail
}


bind.nvim_load_mapping(def_map)
