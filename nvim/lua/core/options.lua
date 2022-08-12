-- neovim option document : https://neovim.io/doc/user/options.html

-- UI
    vim.o.pumblend = 10                  -- Enables pseudo-transparency for the |popup-menu|.
    vim.o.winblend = 10                  -- Enables pseudo-transparency for a floating window.
    vim.o.showtabline = 2                -- Always show the tabline
    vim.o.showbreak = "↳  "              -- String to put at the start of lines that have been wrapped.
    vim.o.wrap = false                   -- Lines will not wrap and only part of long lines will be displayed.
    vim.o.number = true                  -- Print the line number in front of each line.
    vim.o.showmode = false               -- Don't put a message on the last line.
    vim.o.cursorline = true              -- Highlight the text line of the cursor.
    vim.o.signcolumn = "yes"             -- Always show the signcolumn
    vim.o.termguicolors = true           -- Enables 24-bit RGB color in the terminal UI.
    vim.o.list = true                    -- Enable list mode.
    vim.o.listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←" -- Strings to use in 'list' mode and for the |:list| command.

-- Useful option
    vim.o.mouse = "a"                    -- Enables mouse support.
    vim.o.errorbells = true              -- Ring the bell for error message.
    vim.o.visualbell = true              -- Use visual bell instead of beeping.
    vim.o.ignorecase = true              -- Ignore case in search patterns. (Override by smartcase)
    vim.o.smartcase = true               -- Override the 'ignorecase' option if the search pattern contains upper case characters.
    vim.o.history = 2000                 -- A history of ':' commands, and a history of previous search patterns are remembered.
    vim.o.timeoutlen = 800               -- Time in milliseconds to wait for a mapped sequence to complete.
    vim.o.ttimeoutlen = 0                -- Time in milliseconds to wait for a key code sequence to complete.
    vim.o.scrolloff = 5                  -- Minimal number of screen lines to keep above and below the cursor.
    vim.o.sidescrolloff = 10             -- The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set.

    vim.o.equalalways = false            -- Splitting a window will reduce the size of the current window and leave the other windows the same.
    vim.o.encoding = "utf-8"             -- Sets the character encoding used inside Vim.

-- Backup & Buffer
    vim.o.autowrite = true               -- Write the contents of the file, if it has been modified
    vim.o.undofile = true                -- Vim automatically saves undo history to an undo file when writing a buffer to a file, and restores undo history from the same file on buffer read.
    vim.o.swapfile = false               -- Do not use a swapfile for the buffer.

-- Tab & Indent
    vim.o.shiftwidth = 4                 -- Number of spaces to use for (auto) indentation.
    vim.o.shiftround = true              -- Round indent to multiple of 'shiftwidth'.
    vim.o.tabstop = 4                    -- Number of spaces that a <Tab> in the file counts for.
    vim.o.softtabstop = 4                -- Number of spaces that a <Tab> counts for while performing editing operations
    vim.o.smarttab = true                -- A tab in front of a line inserts blanks according to 'shiftwidth'.
    vim.o.expandtab = true               -- In insert mode, use the appropriate number of spaces to insert a tab.
    vim.o.smartindent = true             -- Do an auto indentation when starting a new line.
