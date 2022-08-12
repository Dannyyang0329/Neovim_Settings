require("lualine").setup({
    options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {},
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = {
            {
                "diagnostics",
                sources = { "nvim_diagnostic" },
                symbols = { error = " ", warn = " ", info = " " },
            },
        },
        lualine_y = {
            { "filetype", colored = true },
            { "encoding" },
            {
                "fileformat",
                icons_enabled = true,
                symbols = {
                    unix = "LF",
                    dos = "CRLF",
                    mac = "CR",
                },
            },
        },
        lualine_z = {{'os.date("%-I:%M %p")', color = {gui='NONE'}}}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        -- lualine_c = { require'tabline'.tabline_buffers },
        -- lualine_x = { require'tabline'.tabline_tabs },
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
})
