local global = require("core.global")

local function load_options()
	local global_local = {
        -- neovim option document : https://neovim.io/doc/user/options.html

        -- UI
		pumblend = 10,                  -- Enables pseudo-transparency for the |popup-menu|.
		winblend = 10,                  -- Enables pseudo-transparency for a floating window.
		showtabline = 2,                -- Always show the tabline
		showbreak = "↳  ",              -- String to put at the start of lines that have been wrapped.
		wrap = false,                   -- Lines will not wrap and only part of long lines will be displayed.
		number = true,                  -- Print the line number in front of each line.
		showmode = false,               -- Don't put a message on the last line.
		cursorline = true,              -- Highlight the text line of the cursor.
		signcolumn = "yes",             -- Always show the signcolumn
		termguicolors = true,           -- Enables 24-bit RGB color in the terminal UI.
        list = true,                    -- Enable list mode.
		listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←", -- Strings to use in 'list' mode and for the |:list| command.

        -- Useful option
		mouse = "a",                    -- Enables mouse support.
		errorbells = true,              -- Ring the bell for error message.
		visualbell = true,              -- Use visual bell instead of beeping.
		ignorecase = true,              -- Ignore case in search patterns. (Override by smartcase)
		smartcase = true,               -- Override the 'ignorecase' option if the search pattern contains upper case characters.
		history = 2000,                 -- A history of ':' commands, and a history of previous search patterns are remembered.
		timeoutlen = 800,               -- Time in milliseconds to wait for a mapped sequence to complete.
		ttimeoutlen = 0,                -- Time in milliseconds to wait for a key code sequence to complete.
		scrolloff = 5,                  -- Minimal number of screen lines to keep above and below the cursor.
		sidescrolloff = 10,             -- The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set.

		equalalways = false,            -- Splitting a window will reduce the size of the current window and leave the other windows the same.
		encoding = "utf-8",             -- Sets the character encoding used inside Vim.

        -- Backup & Buffer
		autowrite = true,               -- Write the contents of the file, if it has been modified
		undofile = true,                -- Vim automatically saves undo history to an undo file when writing a buffer to a file, and restores undo history from the same file on buffer read.
		swapfile = false,               -- Do not use a swapfile for the buffer.

        -- Tab & Indent
		shiftwidth = 4,                 -- Number of spaces to use for (auto) indentation.
		shiftround = true,              -- Round indent to multiple of 'shiftwidth'.
		tabstop = 4,                    -- Number of spaces that a <Tab> in the file counts for.
		softtabstop = 4,                -- Number of spaces that a <Tab> counts for while performing editing operations
		smarttab = true,                -- A tab in front of a line inserts blanks according to 'shiftwidth'.
		expandtab = true,               -- In insert mode, use the appropriate number of spaces to insert a tab.
		smartindent = true,             -- Do an auto indentation when starting a new line.
	}

	if global.is_mac then
		vim.g.clipboard = {
			name = "macOS-clipboard",
			copy = { ["+"] = "pbcopy", ["*"] = "pbcopy" },
			paste = { ["+"] = "pbpaste", ["*"] = "pbpaste" },
			cache_enabled = 0,
		}
		vim.g.python_host_prog = "/usr/bin/python"
		vim.g.python3_host_prog = "/usr/local/bin/python3"
	else 
		vim.g.python_host_prog = "/usr/bin/python"
		vim.g.python3_host_prog = "/usr/bin/python3"
	end
	for name, value in pairs(global_local) do
		vim.o[name] = value
	end
end

load_options()
