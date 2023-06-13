-- import plugin safely
local status, whichKey = pcall(require, "which-key")
if not status then
  return
end

vim.o.timeout = true
vim.o.timeoutlen = 300

whichKey.setup()

