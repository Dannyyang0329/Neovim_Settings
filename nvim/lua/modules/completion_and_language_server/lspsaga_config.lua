local saga = require('lspsaga')

saga.init_lsp_saga({
    -- "single" | "double" | "rounded" | "bold" | "plus"
    border_style = "rounded",
    move_in_saga = { prev = '<C-k>',next = '<C-j>'},
    diagnostic_header = { "", "", "", "" },
})

