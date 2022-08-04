local lang = {}
local conf = require("modules.lang.config")

-- Markdown-preview out of box
lang["iamcco/markdown-preview.nvim"] = {
	opt = true,
	ft = "markdown",
	run = "cd app && yarn install",
}

-- Plugin for csv
lang["chrisbra/csv.vim"] = { opt = true, ft = "csv" }

return lang
