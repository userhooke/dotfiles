-- plugin specific keymaps are in plugin folder

-- <S-...>  shift-key                      shift <S-
-- <C-...>  control-key                    control ctrl <C-
-- <M-...>  alt-key or meta-key            meta alt <M-
-- <A-...>  same as <M-...>                <A-
-- <D-...>  command-key (Macintosh only)   <D-

local keymap = vim.keymap

-- Save all opened files in tabs.
keymap.set("n", "<Tab>s", ":wa<CR>") 

-- Close all, exit vim
keymap.set("n", "<Tab>q", ":qa<CR>") 

-- Close all buffers
keymap.set("n", "<Tab>w", ":bufdo bd<CR>:NvimTreeToggle<CR>") 

-- clear highlighted search results
keymap.set("n", "<Tab>nh", ":nohl<CR>")

-- run shell command
keymap.set("n", "<Tab>r", ":!")

-- window management
keymap.set("n", "<Tab>h", "<C-w>h") -- focus left
keymap.set("n", "<Tab>l", "<C-w>l") -- focus right

keymap.set("n", "<Tab>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<Tab>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<Tab>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<Tab>sx", ":close<CR>") -- close current split window

keymap.set("n", "<Tab>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<Tab>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<Tab>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<Tab>tp", ":tabp<CR>") --  go to previous tab

-- disable d,x,s,c to copy deleted to clipboard
keymap.set("n", "d", "\"_d")
keymap.set("n", "x", "\"_x")
keymap.set("n", "s", "\"_s")
keymap.set("n", "c", "\"_c")

