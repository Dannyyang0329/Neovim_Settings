vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
    term_colors = true,
    transparent_background = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    styles = {
        comments = { "italic" },
    },
    integrations = {},

})

vim.cmd [[colorscheme catppuccin]]
