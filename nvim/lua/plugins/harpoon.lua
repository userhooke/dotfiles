-- import plugin safely
local status, mark = pcall(require, "harpoon.mark")
if not status then
  return
end

local status, ui = pcall(require, "harpoon.ui")
if not status then
  return
end


vim.keymap.set("n", "<Tab>aa", mark.add_file)
vim.keymap.set("n", "<Tab>ap", ui.toggle_quick_menu)

vim.keymap.set("n", "<Tab>6", function() ui.nav_file(1) end)
vim.keymap.set("n", "<Tab>7", function() ui.nav_file(2) end)
vim.keymap.set("n", "<Tab>8", function() ui.nav_file(3) end)
vim.keymap.set("n", "<Tab>9", function() ui.nav_file(4) end)
vim.keymap.set("n", "<Tab>0", function() ui.nav_file(5) end)

