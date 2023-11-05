vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require('options')
require('keymaps')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({import = "plugins"})
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = { width = 15 ,},
  renderer = { group_empty = true, },
  filters = { dotfiles = true, },
})

local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

open_nvim_tree()
