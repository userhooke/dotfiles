vim.g.mapleader = " "

local keymap = vim.keymap

-- Save all opened files in tabs.
keymap.set("n", "<leader>s", ":wa<CR>") 

-- Close all, exit vim
keymap.set("n", "<leader>q", ":qa<CR>") 

-- Close all buffers
keymap.set("n", "<leader>w", ":bufdo bd<CR>:NvimTreeToggle<CR>") 

-- clear highlighted search results
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- run shell command
keymap.set("n", "<leader>r", ":!")

-- window management
keymap.set("n", "<leader>h", "<C-w>h") -- focus left
keymap.set("n", "<leader>l", "<C-w>l") -- focus right

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>") -- find files inside git project
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- undotree
keymap.set("n", "<leader>u", ":UndotreeToggle<cr>")

