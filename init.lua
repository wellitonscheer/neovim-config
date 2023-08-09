require("core.keymaps")
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

local plugins = { 
  {"nvim-tree/nvim-web-devicons", lazy= true},
  "nvim-tree/nvim-tree.lua"
}

local opts = {}

require("lazy").setup(plugins, opts)
require("nvim-web-devicons").setup()
require("nvim-tree").setup()
