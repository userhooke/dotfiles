-- import plugin safely
local status, mark = pcall(require, "harpoon.mark")
if not status then
  return
end

local status, ui = pcall(require, "harpoon.ui")
if not status then
  return
end


vim.keymap.set("n", "<Tab>a", mark.add_file)
vim.keymap.set("n", "<Tab>p", ui.toggle_quick_menu)

vim.keymap.set("n", "<Tab>:", function() ui.nav_file(1) end)
vim.keymap.set("n", "<Tab>?", function() ui.nav_file(2) end)
vim.keymap.set("n", "<Tab>*", function() ui.nav_file(3) end)
vim.keymap.set("n", "<Tab>(", function() ui.nav_file(4) end)
vim.keymap.set("n", "<Tab>)", function() ui.nav_file(5) end)

