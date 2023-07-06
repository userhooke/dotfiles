-- import plugin safely
local status, lsp = pcall(require, "lsp-zero")
if not status then
  return
end

local status, lspconfig = pcall(require, "lspconfig")
if not status then
  return
end

lsp.preset("recommended")

lsp.ensure_installed({
  "tsserver",
  "eslint",
  "sumneko_lua",
  "jsonls",
  "html",
  "cssls",
  "markdownlint",
  "makefile",
  "dockerfile",
  "bashls",
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

