-- import plugin safely
local status, mark = pcall(require, "harpoon.mark")
if not status then
  return
end

local status, ui = pcall(require, "harpoon.ui")
if not status then
  return
end


vim.keymap.set("n", "<Tab>aa", mark.add_file, {desc = "add file to harpoon"})
vim.keymap.set("n", "<Tab>ap", ui.toggle_quick_menu, {desc = "toggle harpoon menu"})

vim.keymap.set("n", "<Tab>6", function() ui.nav_file(1) end, {desc = "navigate to file 1"})
vim.keymap.set("n", "<Tab>7", function() ui.nav_file(2) end, {desc = "navigate to file 2"})
vim.keymap.set("n", "<Tab>8", function() ui.nav_file(3) end, {desc = "navigate to file 3"})
vim.keymap.set("n", "<Tab>9", function() ui.nav_file(4) end, {desc = "navigate to file 4"})
vim.keymap.set("n", "<Tab>0", function() ui.nav_file(5) end, {desc = "navigate to file 5"})

