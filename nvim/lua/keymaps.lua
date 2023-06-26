-- plugin specific keymaps are in plugin folder

-- <S-...>  shift-key                      shift <S-
-- <C-...>  control-key                    control ctrl <C-
-- <M-...>  alt-key or meta-key            meta alt <M-
-- <A-...>  same as <M-...>                <A-
-- <D-...>  command-key (Macintosh only)   <D-

local keymap = vim.keymap

keymap.set("n", "<Tab>s", ":wa<CR>", {desc = "Save all opened files in tabs"}) 
keymap.set("n", "<Tab>q", ":qa<CR>", {desc = "Close all, exit vim"}) 
keymap.set("n", "<Tab>w", ":bufdo bd<CR>", {desc = "Close all buffers"}) 
keymap.set("n", "<Tab>nh", ":nohl<CR>", {desc = "clear highlighted search results"})
keymap.set("n", "<Tab>r", ":!" , {desc = "run shell command"})
keymap.set("n", "<Tab>t", ":terminal<CR>", {desc = "open terminal"})

-- window management
keymap.set("n", "<Tab>h", "<C-w>h", {desc = "focus left window"})
keymap.set("n", "<Tab>l", "<C-w>l", {desc = "focus right window"})
keymap.set("n", "<Tab>sv", "<C-w>v", {desc = "split window vertically"})
keymap.set("n", "<Tab>sh", "<C-w>s", {desc = "split window horizontally"})
keymap.set("n", "<Tab>se", "<C-w>=", {desc = "balance window sizes"})
keymap.set("n", "<Tab>sx", ":close<CR>", {desc = "close current window"})
keymap.set("n", "<Tab>to", ":tabnew<CR>", {desc = "open new tab"})
keymap.set("n", "<Tab>tx", ":tabclose<CR>", {desc = "close current tab"})
keymap.set("n", "<Tab>tn", ":tabn<CR>", {desc = "go to next tab"})
keymap.set("n", "<Tab>tp", ":tabp<CR>", {desc = "go to previous tab"})

-- file navigation
keymap.set("n", "<C-d>", "<C-d>zz", {desc = "scroll down half page, keep cursor in middle"})
keymap.set("n", "<space>", "<C-d>zz", {desc = "scroll down half page, keep cursor in middle"})
keymap.set("n", "<C-u>", "<C-u>zz", {desc = "scroll up half page, keep cursor in middle"})

