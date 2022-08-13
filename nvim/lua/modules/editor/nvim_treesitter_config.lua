require('nvim-treesitter.configs').setup({
    ensure_installed = { 
        'bash', 'c', 'cpp', 'css', 'html', 'java', 'javascript',
        'json', 'json5', 'lua', 'markdown', 'php', 'python', 'sql'
    },
    sync_install = true,
    auto_install = true,
    highlight = { enable = true },
    rainbow = {
        enable = true,
        extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
        max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
    },
    autotag = {
        enable = true,
    },
    context_commentstring = { enable = true, enable_autocmd = false },
    matchup = { enable = true },
})
