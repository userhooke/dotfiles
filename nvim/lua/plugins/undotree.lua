-- import plugin safely
local status, undotree = pcall(require, "undotree")
if not status then
  return
end

vim.keymap.set("n", "<Tab>u", ":UndotreeToggle<cr>")

