local vim = vim
local opt = vim.opt

require("settings.disable_builtin")
opt.backup = false
opt.backupcopy = "yes"
opt.cmdheight = 1
opt.completeopt = "menuone,noselect"
opt.conceallevel = 0
opt.fileencoding = "utf-8"
opt.hlsearch = true
opt.lazyredraw = true -- Do not redraw screen while processing macros
opt.ignorecase = true
opt.mouse = "nv"
opt.pumheight = 10
opt.showmode = false
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.termguicolors = true
opt.timeoutlen = 250
opt.undofile = true
opt.undodir = vim.fn.expand("~") .. "/.vim/undodir" -- directory to save undofiles
opt.updatetime = 300
opt.writebackup = false
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.cursorline = true
opt.compatible = false
opt.relativenumber = false
opt.number = true
opt.numberwidth = 4
opt.signcolumn = "yes"
opt.wrap = false
opt.breakindent = true
opt.showbreak = string.rep(" ", 3)
opt.guicursor = "n-v-sm:block,i-c-ci-ve:ver25,r-cr-o:hor20"
opt.scrolloff = 8
opt.foldlevel = 100
opt.joinspaces = false
opt.sidescrolloff = 8
opt.laststatus = 3
opt.autochdir = false
opt.shortmess:append("c")
opt.virtualedit = "block" -- allow visual mode to go over end of lines
opt.shell = "/bin/zsh"
opt.listchars = {
	tab = "> ",
	nbsp = "␣",
	trail = "•",
}
opt.formatoptions = vim.opt.formatoptions
	+ "r" -- continue comments after return
	+ "c" -- wrap comments using textwidth
	+ "q" -- allow to format comments w/ gq
	+ "j" -- remove comment leader when joining lines when possible
	- "t" -- don't autoformat
	- "a" -- no autoformatting
	- "o" -- don't continue comments after o/O
	- "2" -- don't use indent of second line for rest of paragraph
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.fillchars = {
-- 	eob = " ",
-- 	vert = "║",
-- 	horiz = "═",
-- 	horizup = "╩",
-- 	horizdown = "╦",
-- 	vertleft = "╣",
-- 	vertright = "╠",
-- 	verthoriz = "╬",
-- }
