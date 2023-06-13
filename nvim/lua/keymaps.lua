-- <S-...>  shift-key                      shift <S-
-- <C-...>  control-key                    control ctrl <C-
-- <M-...>  alt-key or meta-key            meta alt <M-
-- <A-...>  same as <M-...>                <A-
-- <D-...>  command-key (Macintosh only)   <D-

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

-- plugin specific keymaps are in plugin folder

