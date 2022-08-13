require("which-key").setup({
    plugins = {
        presets = {
            operators = true,
            motions = true,
            text_objects = true,
            windows = true,
            nav = true,
            z = true,
            g = true,
        },
    },
    icons = {
        breadcrumb = "»",
        separator = "│",
        group = "+",
    },
    window = {
        border = "none",
        position = "bottom",
        margin = { 1, 0, 1, 0 },
        padding = { 1, 1, 1, 1 },
        winblend = 0,
    },
    popup_mappings = {
        scroll_down = '<c-j>', -- binding to scroll down inside the popup
        scroll_up = '<c-k>', -- binding to scroll up inside the popup
    },
})
