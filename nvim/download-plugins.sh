#!/usr/bin/env bash

download() {
  git clone --depth 1 https://github.com/${1}/${2}.git ~/.config/nvim/pack/${1}/start/${2}
}

# lua functions that many plugins use
download nvim-lua plenary.nvim

# color theme 
download rose-pine neovim

# statusline
download nvim-lualine lualine.nvim

# undo tooling
download mbbill undotree

# quick buffer switcher
download theprimeagen harpoon

# UI helper for hotkeys
download folke which-key.nvim

# fuzzy finding w/ telescope
download nvim-telescope telescope.nvim

# file browser
download nvim-telescope telescope-file-browser.nvim

# better sorting performance
download nvim-telescope telescope-fzf-native.nvim # then run "make" to build sources 

# for showing lsp code actions
download nvim-telescope telescope-ui-select.nvim

# for better code parsing and highlighting
download nvim-treesitter nvim-treesitter 

# completion plugin
download hrsh7th nvim-cmp

# source for text in buffer
download hrsh7th cmp-buffer

# source for file system paths
download hrsh7th cmp-path

# snippet engine
download L3MON4D3 LuaSnip

# for autocompletion
download saadparwaiz1 cmp_luasnip

# Copilot integration
download github copilot.vim # Start Neovim and invoke :Copilot setup.

# Optional non-neovim dependencies
# brew install ripgrep
# brew install fd

