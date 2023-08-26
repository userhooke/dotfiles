-- import plugin safely
local status, lsp = pcall(require, "lsp-zero")
if not status then
  return
end

local status, lspconfig = pcall(require, "lspconfig")
if not status then
  return
end

local status, cmp = pcall(require, "cmp")
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

local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ["<CR>"] = cmp.mapping.confirm({ select = false }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings["<Tab>"] = nil
cmp_mappings["<S-Tab>"] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart | edit<CR>", {desc = "Restart LSP"})

