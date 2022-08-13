require("notify").setup({
    stages = "slide",
    on_open = nil,
    on_close = nil,
    timeout = 3500,
    render = "default",
    background_colour = "Normal",
    minimum_width = 50,
    icons = {
			ERROR = "",
			WARN = "",
			INFO = "",
			DEBUG = "",
			TRACE = "✎",
		},
})

vim.notify = require("notify")
