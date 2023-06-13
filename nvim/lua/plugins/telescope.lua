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
  },
})

telescope.load_extension("fzf")
telescope.load_extension("ui-select")

vim.keymap.set("n", "<Tab>fg", "<cmd>Telescope git_files<cr>") -- find files inside git project
vim.keymap.set("n", "<Tab>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
vim.keymap.set("n", "<Tab>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
vim.keymap.set("n", "<Tab>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
vim.keymap.set("n", "<Tab>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
vim.keymap.set("n", "<Tab>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

