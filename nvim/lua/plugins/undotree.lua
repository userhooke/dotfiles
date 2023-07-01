-- import plugin safely
local status, undotree = pcall(require, "undotree")
if not status then
  return
end

vim.keymap.set("n", "<leader>u", ":UndotreeToggle<cr>", {desc = "open undotree"})

