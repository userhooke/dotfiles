-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

-- import telescope-ui-select safely
local themes_setup, themes = pcall(require, "telescope.themes")
if not themes_setup then
  return
end

-- configure telescope
telescope.setup({
  -- configure custom mappings
  extensions = {
    ["ui-select"] = {
      themes.get_dropdown({}),
    },
    file_browser = {
      hijack_netrw = true, -- disables netrw and use telescope-file-browser in its place
      dir_icon = "🗂️",
      hidden = { file_browser = true, folder_browser = true },
    },
  },
})

-- telescope.load_extension("fzf")
telescope.load_extension("ui-select")
telescope.load_extension("file_browser")

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Tab>ff', builtin.find_files, {desc = "Telescope: find files"})
vim.keymap.set('n', '<Tab>fg', builtin.git_files, {desc = "Telescope: find files in git repo"})
vim.keymap.set({'n', "v"}, '<Tab>fs', builtin.grep_string, {desc = "Telescope: search string under cursor"})
vim.keymap.set('n', '<Tab>fl', builtin.live_grep, {desc = "Telescope: live grep"})
vim.keymap.set('n', '<Tab>fb', builtin.buffers, {desc = "Telescope: show active buffers"})
vim.keymap.set('n', '<Tab>fh', builtin.help_tags, {desc = "Telescope: show help tags"})
vim.keymap.set("n", "<Tab>e", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", {desc = "Telescope: file browser"})

