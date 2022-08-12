require("nvim-tree").setup({
    respect_buf_cwd = true,     -- Will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
    hijack_cursor = true,   -- Keeps the cursor on the first letter of the filename when moving in the tree.
    update_cwd = true, -- Changes the tree root directory on `DirChanged` and refreshes the tree.
    view = {
        width = 30,
        height = 30,
        side = "left",
    },
    renderer = {
        indent_markers = {
            enable = true,
            icons = {
                corner = "└ ",
                edge = "│ ",
                none = "  ",
            },
        },
        root_folder_modifier = ":e",
        icons = {
            padding = " ",
            symlink_arrow = "  ",
            glyphs = {
                ["default"] = "", --
                ["symlink"] = "",
                ["git"] = {
                    ["unstaged"] = "",
                    ["staged"] = "", --
                    ["unmerged"] = "שׂ",
                    ["renamed"] = "", --
                    ["untracked"] = "ﲉ",
                    ["deleted"] = "",
                    ["ignored"] = "", --◌
                },
                ["folder"] = {
                    ["arrow_open"] = "",
                    ["arrow_closed"] = "",
                    ["default"] = "",
                    ["open"] = "",
                    ["empty"] = "",
                    ["empty_open"] = "",
                    ["symlink"] = "",
                    ["symlink_open"] = "",
                },
            },
        },
    },
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
    },
    ignore_ft_on_setup = {},
    filters = {
        dotfiles = false,
        custom = { ".DS_Store" },
        exclude = {},
    },
    actions = {
        use_system_clipboard = true,
        change_dir = {
            enable = true,
            global = false,
        },
        open_file = {
            quit_on_open = false,
            resize_window = false,
            window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                    buftype = { "nofile", "terminal", "help" },
                },
            },
        },
    },
})
