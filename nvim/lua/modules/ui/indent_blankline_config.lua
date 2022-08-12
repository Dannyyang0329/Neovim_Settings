vim.cmd [[highlight IndentBlanklineIndent1 guifg=#0039a6 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#0065cc gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#007FFF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#6CB4EE gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#89CFF0 gui=nocombine]]

require("indent_blankline").setup({
    space_char_blankline = " ",
    show_current_context = true,
    show_first_indent_level = true,
    show_trailing_blankline_indent = false,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
    },
    filetype_exclude = {
        "startify",
        "dashboard",
        "dotooagenda",
        "log",
        "fugitive",
        "gitcommit",
        "packer",
        "vimwiki",
        "markdown",
        "json",
        "txt",
        "vista",
        "help",
        "todoist",
        "NvimTree",
        "peekaboo",
        "git",
        "TelescopePrompt",
        "undotree",
        "flutterToolsOutline",
        "", -- for all buffers without a file type
    },
    context_patterns = {
        "class",
        "function",
        "method",
        "block",
        "list_literal",
        "selector",
        "^if",
        "^table",
        "if_statement",
        "while",
        "for",
        "type",
        "var",
        "import",
    },
})
-- because lazy load indent-blankline so need readd this autocmd
vim.cmd("autocmd CursorMoved * IndentBlanklineRefresh")
vim.cmd("highlight IndentBlanklineContextChar guifg=#f2E767")
