require("sniprun").setup({
    selected_interpreters = {}, -- " use those instead of the default for the current filetype
    repl_enable = {}, -- " enable REPL-like behavior for the given interpreters
    repl_disable = {}, -- " disable REPL-like behavior for the given interpreters
    interpreter_options = {}, -- " intepreter-specific options, consult docs / :SnipInfo <name>
    display = { "NvimNotify" },
    display_options = { notification_timeout = 5000 },
    inline_messages = 0, -- " inline_message (0/1) is a one-line way to display messages
    borders = "shadow", -- " display borders around floating windows
})

