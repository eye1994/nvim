require("mason-lspconfig").setup()
require("mason").setup()

local on_attach = function(_, bufnr)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename" })
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code Action" })
  vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { buffer = bufnr, desc = "Type Definition" })
  vim.keymap.set("n", "<leader>fF", vim.lsp.buf.format, { buffer = bufnr, desc = "File format" })
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover Documentation" })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Goto Definition" })
end

local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({
  ensure_installed = {"tsserver", "eslint"},
})

mason_lspconfig.setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {},
    })
  end,
})
