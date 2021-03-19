local nvim_lsp = require('lspconfig')

nvim_lsp.gopls.setup {
  cmd = { "gopls", "serve" },
--  on_attach = require('completion').on_attach,
}

