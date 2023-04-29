return {  
  "nvim-lua/plenary.nvim",

  {
    "lewis6991/impatient.nvim",
    config = function()
      require("impatient")
    end,
  },

  { "norcalli/nvim-base16.lua" },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { { 'kyazdani42/nvim-web-devicons' } },
    event = "BufEnter",
    config = function()
      require("plugins.configs.lualine")
    end,
  },

  {
    "akinsho/bufferline.nvim",
    event = "BufRead",
    config = function()
      require("plugins.configs.bufferline")
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function()
      require("plugins.configs.indentline")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufRead",
    config = function()
      require("plugins.configs.treesitter")
    end,
    dependencies = {
      "p00f/nvim-ts-rainbow",
    }
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    config = function()
      require("plugins.configs.gitsigns")
    end,
  },

  {
    "m-demare/hlargs.nvim",
    event = "BufRead",
    config = function()
      require("hlargs").setup()
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    event = "BufRead",
    config = function()
      require("toggleterm").setup({
        size = 70,
        open_mapping = [[<C-\>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 3,
        start_in_insert = true,
        insert_mappings = false,
        persist_size = false,
        direction = "vertical",
        close_on_exit = true,
        shell = vim.o.shell,
      })
    end,
  },

  { "antoinemadec/FixCursorHold.nvim", event = "BufEnter" },

  {
    "rcarriga/nvim-notify",
    config = function()
      require("plugins.configs.notify")
    end,
  },

  {
    "max397574/better-escape.nvim",
    event = "BufRead",
    config = function()
      require("plugins.configs.better-escape")
    end,
  },

  { "folke/trouble.nvim",
    event = "BufEnter"
  },

  {
    "folke/todo-comments.nvim",
    event = "BufEnter",
    config = function()
      require("plugins.configs.todo-comments")
    end,
  },

  {
    "nacro90/numb.nvim",
    event = "BufEnter",
    config = function()
      require("numb").setup({
        show_numbers = true,
        show_cursorline = true,
        number_only = false,
        centered_peeking = true,
      })
    end,
  },

  {
    "mizlan/iswap.nvim",
    event = "BufRead",
    config = function()
      require("iswap").setup({
        keys = "qwertyuiop",
        grey = "disable",
        hl_snipe = "ErrorMsg",
        hl_selection = "WarningMsg",
        hl_grey = "LineNr",
        autoswap = true,
        debug = nil,
        hl_grey_priority = "1000",
      })
    end,
  },

  {
    "karb94/neoscroll.nvim",
    keys = {
      { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" }
    },
    config = function()
      require("plugins.configs.neoscroll")
    end,
  },

  {
    "sindrets/winshift.nvim",
    event = "BufRead",
    config = function()
      require("plugins.configs.winshift")
    end,
  },
  
  {
    "monaqa/dial.nvim",
    keys = { "<C-a>", { "<C-x>", mode = "n" } },
  },

  { "rmagatti/alternate-toggler", 
    keys = {"ta"}, 
  },

  { "danymat/neogen" },

  { "winston0410/cmd-parser.nvim" },

  {
    "ggandor/leap.nvim",
    keys = {
      { "s", "S" }
    },
    config = function()
      require("leap").set_default_keymaps()
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    ft = "html",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "beauwilliams/focus.nvim",
    config = function()
      require("focus").setup({
        excluded_filetypes = {
          "toggleterm",
          "Trouble",
          "neo-tree",
          "Outline",
        },
      })
    end,
  },

  {
    "michaelb/sniprun",
    build = "bash install.sh",
    keys = {
      "f", "<leader>f", "<leader>fh", "<leader>ff"
    }
  },

  { "rafamadriz/friendly-snippets" },

  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "dmitmel/cmp-cmdline-history",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-calc",
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    config = function()
      require("plugins.configs.cmp")
    end,
  },
  
  { "L3MON4D3/LuaSnip", event = "InsertEnter" },

  {
    "williamboman/nvim-lsp-installer",
    config = function()
      require("plugins.lsp")
    end,
  },

  { "neovim/nvim-lspconfig" },
  { "tamago324/nlsp-settings.nvim" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "onsails/lspkind.nvim" },

  {
    'altermo/ultimate-autopair.nvim',
    event="BufEnter",
    config=function ()
        require('ultimate-autopair').setup({
            --Config goes here
        })
    end,
  },

  {
    "goolord/alpha-nvim",
    config = function()
      require("plugins.configs.alpha")
    end,
  },

  {
    "numToStr/Comment.nvim",
    module = "Comment",
    event = "BufEnter",
    config = function()
      require("plugins.configs.comment")
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("plugins.configs.neotree")
    end,
    config = true,
  },

  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("plugins.configs.telescope")
    end,
  },

  {
    "Shatur/neovim-session-manager",
    config = function()
      require("plugins.configs.session-manager")
    end,
  },

  {
    "SmiteshP/nvim-gps",
    config = function()
      require("plugins.configs.gps")
    end,
  },

  { 
    'CRAG666/code_runner.nvim', 
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      require('code_runner').setup({
        -- put here the commands by filetype
        filetype = {
	      	java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
	      	python = "python3 -u",
	      	typescript = "deno build",
	      	rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
	      },
      })
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    event = "BufEnter"
  },

  {
    'kazhala/close-buffers.nvim',
    event = "BufEnter"
  },

  {
    "lambdalisue/suda.vim", 
    event = "BufEnter"
  },

  -- {
  --   "jackMort/ChatGPT.nvim",
  --   config = function()
  --     require("plugins.configs.chatGPT")
  --   end,
  --   dependencies = {{
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim"
  --   }}  
  -- },
}
