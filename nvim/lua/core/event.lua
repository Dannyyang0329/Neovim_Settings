local definitions = {
    packer = {},
    bufs = {
        {
            "BufEnter",
            "*",
            [[++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]],
        },
    },
    wins = {
        -- Highlight current line only on focused window
        {
            "WinEnter,BufEnter,InsertLeave",
            "*",
            [[if ! &cursorline && &filetype !~# '^\(dashboard\|clap_\)' && ! &pvw | setlocal cursorline | endif]],
        },
        {
            "WinLeave,BufLeave,InsertEnter",
            "*",
            [[if &cursorline && &filetype !~# '^\(dashboard\|clap_\)' && ! &pvw | setlocal nocursorline | endif]],
        },
    },
    ft = {
        {
            "FileType",
            "*",
            [[setlocal formatoptions-=cro]],
        },
    },
    yank = {
        -- Yank highlight
        {
            "TextYankPost",
            "*",
            [[silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=300})]],
        },
    }
}

for group_name, definition in pairs(definitions) do
    vim.api.nvim_command("augroup " .. group_name)
    vim.api.nvim_command("autocmd!")
    for _, def in ipairs(definition) do
        local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
        vim.api.nvim_command(command)
    end
    vim.api.nvim_command("augroup END")
end

