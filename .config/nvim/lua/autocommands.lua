local cmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

augroup("_terminal", {})

-- Disable autocommenting
cmd("BufEnter", {
	desc = "Disable autocommenting in new lines",
	command = "set fp-=c fo-=r fo-=o",
})

-- Terminal settings
cmd("TermOpen", {
	desc = "Terminal settings",
	group = "_terminal",
	command = "startinsert",
})

cmd("TermOpen", {
	desc = "Terminal settings",
	group = "_terminal",
	command = "setlocal nonumber norelativenumber",
})

augroup("_buffer", {})

cmd("BufWritePre", {
	desc = "Trim whitespace on save",
	group = "_buffer",
	command = [[call NoWhitespace()]],
})

-- Cursor position
cmd("BufReadPost", {
	desc = "Restore cursor position upon reopening the file",
	group = "_buffer",
	command = [[
       if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit' | execute "normal! g`\"zvzz" | endif
    ]],
})

-- Highlight while yanking
cmd("TextYankPost", {
	pattern = "*",
	desc = "Highlight while yanking",
	group = "_buffer",
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual" })
	end,
})

cmd("FileType", {
	desc = "Quit with q in this filetypes",
	group = "_buffer",
	pattern = "qf,help,man,lspinfo,startuptime,Trouble,glow",
	callback = function()
		vim.keymap.set("n", "q", "<CMD>close<CR>")
	end,
})

-- Nofity when file changes
augroup("_auto_reload_file", {})
cmd("FileChangedShellPost", {
	desc = "Actions when the file is changed outside of Neovim",
	group = "_auto_reload_file",
	callback = function()
		vim.notify("File changed, reloading the buffer", vim.log.levels.ERROR)
	end,
})

cmd({ "FocusGained", "CursorHold" }, {
	desc = "Actions when the file is changed outside of Neovim",
	group = "_auto_reload_file",
	command = [[if getcmdwintype() == '' | checktime | endif]],
})

augroup("git_repo_check", {})
cmd({ "VimEnter", "DirChanged" }, {
	group = "git_repo_check",
	callback = function()
		local is_git = vim.api.nvim_exec("!git rev-parse --is-inside-work-tree", true)
		if is_git:match("true") then
			vim.cmd("doautocmd User IsGit")
			return true
		else
			return false
		end
	end,
})

local function has_value(tab, val)
	for _, value in ipairs(tab) do
		if value == val then
			return true
		end
	end

	return false
end

cmd({ "CursorMoved", "BufWinEnter", "BufFilePost" }, {
	callback = function()
		local winbar_filetype_exclude = {
			"help",
			"startify",
			"packer",
			"NeogitStatus",
			"neo-tree",
			"Trouble",
			"alpha",
			"lir",
			"toggleterm",
			"Outline",
			"spectre_panel",
		}

		if has_value(winbar_filetype_exclude, vim.bo.filetype) then
			vim.opt_local.winbar = nil
			return
		end

		local value = require("plugins.configs.winbar").gps()

		if value == nil then
			value = require("plugins.configs.winbar").filename()
		end

		vim.opt_local.winbar = value
	end,
})

cmd("FileType", {
	callback = function()
		vim.opt.formatoptions = vim.opt.formatoptions
			+ "r" -- continue comments after return
			+ "c" -- wrap comments using textwidth
			+ "q" -- allow to format comments w/ gq
			+ "j" -- remove comment leader when joining lines when possible
			- "t" -- don't autoformat
			- "a" -- no autoformatting
			- "o" -- don't continue comments after o/O
			- "2" -- don't use indent of second line for rest of paragraph
	end,
	desc = "Set formatoptions",
})
