require('lspconfig').bashls.setup{}

-- require('lspconfig').clangd.setup{}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = { "utf-16" }
require('lspconfig').clangd.setup({capabilities = capabilities})

require('lspconfig').omnisharp.setup{}
require('lspconfig').cssls.setup{}
require('lspconfig').eslint.setup{}
require('lspconfig').html.setup{}
require('lspconfig').jdtls.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').marksman.setup{}
-- require('lspconfig').sumneko_lua.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').sqlls.setup{}
