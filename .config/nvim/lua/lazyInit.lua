local fn = vim.fn

-- Automatically install lazy
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

-- Set space as lead key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Use a protected call so we don't error out on first use
-- local status_ok, packer = pcall(require, "lazy")
-- if not status_ok then
--   return
-- end

-- Have packer use a popup window
-- packer.init({
--   display = {
--     open_fn = function()
--       return require("packer.util").float({ border = "rounded" })
--     end,
--   },
-- })

require("lazy").setup('plugins.plugins')
