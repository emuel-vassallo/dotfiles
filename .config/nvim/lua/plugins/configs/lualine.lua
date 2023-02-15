local colors = {
  bg = "#262626",
  darker_grey = "#2f2f2f",
  dark_grey = "#6a6a6a",
  bg_light = "#404040",
  red = "#b66467",
  green = "#8c977d",
  orange = "#d9bc8c",
  blue = "#8da3b9",
  magenta = "#a988b0",
  cyan = "#8ca3af",
  white = "#e8e3e3",
}
--
local theme = {
  normal = {
    a = { fg = colors.bg, bg = colors.green },
    b = { fg = colors.white, bg = colors.bg_light },
    c = { fg = colors.white, bg = colors.bg },

    x = { fg = colors.dark_grey, bg = colors.bg },
    z = { fg = colors.bg, bg = colors.green },
  },
  insert = { a = { fg = colors.bg, bg = colors.magenta }, b = { fg = colors.magenta, bg = colors.bg } },
  visual = { a = { fg = colors.bg, bg = colors.cyan }, b = { fg = colors.cyan, bg = colors.bg } },
  replace = { a = { fg = colors.bg, bg = colors.orange }, b = { fg = colors.orange, bg = colors.bg } },
  command = { a = { fg = colors.bg, bg = colors.magenta }, b = { fg = colors.magenta, bg = colors.bg } },
}

local conditions = {
	buffer_not_empty = function()
		return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
	end,
	hide_in_width = function()
		return vim.fn.winwidth(0) > 80
	end,
	check_git_workspace = function()
		local filepath = vim.fn.expand("%:p:h")
		local gitdir = vim.fn.finddir(".git", filepath .. ";")
		return gitdir and #gitdir > 0 and #gitdir < #filepath
	end,
	width_percent_below = function(n, thresh)
		local winwidth = vim.api.nvim_win_get_width(0)
		return n / winwidth <= thresh
	end,
}

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local mainIcon = {
	"%",
	icon = " ",
	padding = 1,
	color = { bg = colors.bg, fg = colors.dark_grey },
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "hint", "warn" },
	symbols = { error = " ", warn = " ", info = "", hint = " " },
	colored = false,
	update_in_insert = true,
	always_visible = true,
	color = { fg = colors.dark_grey, bg = colors.bg },
	padding = 2,
}

local diff = {
	"diff",
	symbols = { added = "洛", modified = "柳", removed = " " },
	diff_color = {
		added = { fg = colors.dark_grey },
		modified = { fg = colors.dark_grey },
		removed = { fg = colors.dark_grey },
	},
	colored = true,
	cond = conditions.buffer_not_empty,
	padding = { left = 2, right = 2 },
}

local mode = {
	"mode",
	icon = " ",
	padding = { left = 2, right = 2 },
	color = { gui = "bold" },
}

local filetype = {
	"filetype",
	colored = false,
	icon_only = true,
	padding = { left = 2, right = 0 },
	color = { fg = colors.white, bg = colors.bg_light },
}

local filename = {
	"filename",
	padding = { left = 1, right = 2 },
	color = { fg = colors.white, bg = colors.bg_light },
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
	padding = { left = 2, right = 2 },
	color = { fg = colors.dark_grey, bg = colors.darker_grey },
}

local progress = function()
	local current_line = vim.fn.line(".")
	local totalLines = vim.fn.line("$")
	if current_line == 1 then
		return "Top"
	elseif current_line == totalLines then
		return "Bot"
	else
		return "%p%%"
	end
end

local location = {
	progress,
	icon = "",
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "packer", "Trouble", "neo-tree", "Outline", "toggleterm", statusline = {},
      winbar = {} },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
	sections = {
		lualine_a = { mainIcon, mode },
		lualine_b = { filetype, filename },
		lualine_c = { diagnostics },

		lualine_x = { diff },
		lualine_y = { branch },
		lualine_z = { location },
	}
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
