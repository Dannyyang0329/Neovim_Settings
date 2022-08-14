require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
    -- https://github.com/williamboman/mason.nvim/blob/main/PACKAGES.md
    ensure_installed = {
        "bash-language-server",     -- bash
        "clangd",                   -- c & c++
        "omnisharp",                -- c#
        "css-lsp",                  -- css & scss & less
        "eslint-lsp",               -- JavaScript & TypeScript
        "html-lsp",                 -- HTML
        "intelephense",             -- PHP
        "jdtls",                    -- Java
        "json-lsp",                 -- JSON
        "marksman",                 -- Markdown
        "lua-language-server",      -- Lua
        "pyright",                  -- Python
        "sqlls",                    -- SQL
    },
    auto_update = true,
    run_on_start = true,
})
