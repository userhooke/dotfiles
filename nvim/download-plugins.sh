#!/usr/bin/env bash

download() {
  git clone https://github.com/${1}/${2}.git ~/.config/nvim/pack/${1}/start/${2}
}

# lua functions that many plugins use
download nvim-lua plenary.nvim

# color theme 
download p00f alabaster.nvim

# file explorer
download nvim-tree nvim-tree.lua

# statusline
download nvim-lualine lualine.nvim

# undo tooling
download mbbill undotree

# quick buffer switcher
download theprimeagen harpoon

# hotkeys UI helper
download folke which-key.nvim

# fuzzy finding w/ telescope
download nvim-telescope telescope.nvim
#use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
#use({ "nvim-telescope/telescope-ui-select.nvim" }) -- for showing lsp code actions

# TODO replace with lsp-zero.nvim https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/packer.lua#L49
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

# AI
download github copilot.vim
# :Copilot setup

