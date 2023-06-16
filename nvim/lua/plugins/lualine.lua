-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
lualine.setup({
  options = {
    theme = "auto",
  },
})
