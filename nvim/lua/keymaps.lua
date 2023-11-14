-- plugin specific keymaps are in plugin folder

-- <S-...>  shift-key                      shift <S-
-- <C-...>  control-key                    control ctrl <C-
-- <M-...>  alt-key or meta-key            meta alt <M-
-- <A-...>  same as <M-...>                <A-
-- <D-...>  command-key (Macintosh only)   <D-

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", ":wa<CR>", {desc = "Save all opened files in tabs"}) 
keymap.set("n", "<leader>q", ":qa<CR>", {desc = "Close all, exit vim"}) 
keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "clear highlighted search results"})

-- window 
keymap.set("n", "<leader>h", "<C-w>h", {desc = "focus left window"})
keymap.set("n", "<leader>l", "<C-w>l", {desc = "focus right window"})
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "split window vertically"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "balance window sizes"})
keymap.set("n", "<leader>sx", ":close<CR>", {desc = "close current window"})

-- buffer 
keymap.set("n", "<leader>bx", ":bdelete<CR>", {desc = "close current buffer"})
keymap.set("n", "<leader>bn", ":enew<CR>", {desc = "create new buffer"})

-- navigation
keymap.set("n", "<C-d>", "<C-d>zz", {desc = "scroll down half page, keep cursor in middle"})
keymap.set("n", "<C-u>", "<C-u>zz", {desc = "scroll up half page, keep cursor in middle"})

-- git
keymap.set("n", "<leader>gb", ":!smerge blame %:p<CR>", {desc = "git blame current file"})

-- marks
keymap.set("n", "<leader>md", ":delm! | delm A-Z0-9<CR>", {desc = "delete all marks"})

