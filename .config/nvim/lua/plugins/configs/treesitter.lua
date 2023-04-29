local status_ok = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"python",
		"lua",
		"html",
		"css",
		"javascript",
		"c_sharp",
		"query",
		"markdown",
		"norg",
		"json",
		"json5",
		"java",
		"bash",
    "comment",
    "regex",
    "phpdoc"
	},

	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)

  auto_install = true;

	ignore_install = { "" }, -- List of parsers to ignore installing

	autopairs = {
		enable = true,
	},

	autotag = {
		enable = true,
	},

	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = false,
	},

	matchup = {
		enable = true,
	},

	refactor = {
		highlight_definitions = {
			enable = false,
			clear_on_cursor_move = true,
		},
		highlight_current_scope = {
			enable = false,
		},
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "gr",
			},
		},
		navigation = {
			enable = true,
			keymaps = {
				goto_definition = "<leader>td",
				list_definitions = "<leader>tl",
			},
		},
	},

	rainbow = {
		enable = true,
		extended_mode = true,
		max_files_lines = nil,
		colors = { "#d9bc8c", "#a988b0", "#8da3b9" },
	},

	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},

	textobjects = {
		select = {
			enable = true,

			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,

			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
	},
})
