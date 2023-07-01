-- import plugin safely
local status, mark = pcall(require, "harpoon.mark")
if not status then
  return
end

local status, ui = pcall(require, "harpoon.ui")
if not status then
  return
end


vim.keymap.set("n", "<leader>aa", mark.add_file, {desc = "add file to harpoon"})
vim.keymap.set("n", "<leader>ap", ui.toggle_quick_menu, {desc = "toggle harpoon menu"})

vim.keymap.set("n", "<leader>6", function() ui.nav_file(1) end, {desc = "navigate to file 1"})
vim.keymap.set("n", "<leader>7", function() ui.nav_file(2) end, {desc = "navigate to file 2"})
vim.keymap.set("n", "<leader>8", function() ui.nav_file(3) end, {desc = "navigate to file 3"})
vim.keymap.set("n", "<leader>9", function() ui.nav_file(4) end, {desc = "navigate to file 4"})
vim.keymap.set("n", "<leader>0", function() ui.nav_file(5) end, {desc = "navigate to file 5"})

