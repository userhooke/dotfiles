-- import plugin safely
local status, mark = pcall(require, "harpoon.mark")
if not status then
  return
end

local status, ui = pcall(require, "harpoon.ui")
if not status then
  return
end


vim.keymap.set("n", "<leader>a", mark.add_file, {desc = "add file to harpoon"})
vim.keymap.set("n", "<leader>p", ui.toggle_quick_menu, {desc = "toggle harpoon menu"})

vim.keymap.set("n", "<leader>:", function() ui.nav_file(1) end, {desc = "navigate to file 1"})
vim.keymap.set("n", "<leader>?", function() ui.nav_file(2) end, {desc = "navigate to file 2"})
vim.keymap.set("n", "<leader>*", function() ui.nav_file(3) end, {desc = "navigate to file 3"})
vim.keymap.set("n", "<leader>(", function() ui.nav_file(4) end, {desc = "navigate to file 4"})
vim.keymap.set("n", "<leader>)", function() ui.nav_file(5) end, {desc = "navigate to file 5"})

