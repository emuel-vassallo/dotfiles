local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<leader>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Remap space as leader key
keymap("", "<leader>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Better window navigation

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-S-k>", ":resize -2<CR>", opts)
keymap("n", "<C-S-j>", ":resize +2<CR>", opts)
keymap("n", "<C-S-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-S-l>", ":vertical resize +2<CR>", opts)

-- Buffers
keymap("n", "L", ":BufferLineCycleNext<CR>", opts)
keymap("n", "H", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "Q", "<cmd>BDelete this<CR>", opts)
keymap("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", opts)
keymap("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", opts)
keymap("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk/JK or kj/KJ fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "JK", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Substitute
keymap("v", "<leader>su", ":s/", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Command --
keymap("c", "jk", "<ESC>", opts)
keymap("c", "JK", "<ESC>", opts)

-- Custom
keymap(
  "n",
  "<C-p>",
  "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
  opts
)
keymap("n", "<C-t>", "<cmd>lua vim.lsp.buf.document_symbol()<cr>", opts)
keymap("n", "<leader>sl", "<cmd>vsplit<cr>", opts)
keymap("n", "<leader>sj", "<cmd>split<cr>", opts)
keymap("n", "<C-z>", "<cmd>TZAtaraxis<cr>", opts)
keymap("n", "<c-n>", ":e ~/Notes/<cr>", opts)

keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", opts)

-- Searches the link under cusros in web browser
keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)

keymap("n", "<C-n>", ":Neotree toggle reveal_force_cwd<CR>", opts)

--> Telescope
keymap("n", "<leader>fa", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fp", "<cmd>Telescope projects<cr>", opts)

-- Alpha
keymap("n", "<leader>db", ":Alpha<CR>", opts)

-- Quit neovim
keymap("n", "<leader>qn", ":qa!<CR>", opts)

-- Reload current file
keymap("n", "<leader>rn", ":so %<CR>", opts)

-- Edit config
keymap("n", "<leader>v", ":e ~/.config/nvim<CR>", opts)

-- Sync Lazy
keymap("n", "<leader>sp", ":Lazy sync<CR>", opts)

keymap("n", "<leader>hl", ":nohlsearch<CR>", opts)

-- Trouble
keymap("n", "<leader>xx", "<cmd>Trouble<cr>", opts)
keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", opts)
keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", opts)
keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", opts)
keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", opts)

-- Symbols Outline
keymap("n", "<leader>u", "<cmd>SymbolsOutline<CR>", {})

-- restore the session for the current directory
keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], opts)

-- restore the last session
keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], opts)

-- stop Persistence => session won't be saved on exit
keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], opts)

-- LSP
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<leader>li", ":LspInfo<CR>", opts)
keymap("n", "<leader>lI", ":LspInstallInfo<CR>", opts)
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "<C-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "E", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
keymap("n", "gl", '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>', opts)
keymap("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)

-- Neogen
keymap("n", "<leader>ds", ":Neogen<CR>", opts)

-- Sniprun
keymap("v", "f", "<Plug>SnipRun", { silent = true })
keymap("n", "<leader>f", "<Plug>SnipRunOperator", { silent = true })
keymap("n", "<leader>fh", "<Plug>SnipClose", { silent = true })
keymap("n", "<leader>ff", "<Plug>SnipRun", { silent = true })

-- Glow
keymap("n", "<leader>md", ":Glow<CR>", opts)

-- Winshift
keymap("n", "<C-w>X", "<cmd>WinShift swap<CR>", opts)
keymap("n", "<C-w>x", "<cmd>WinShift<CR>", opts)

-- dial.nvim
keymap("n", "<C-a>", require("dial.map").inc_normal(), { noremap = true })
keymap("n", "<C-x>", require("dial.map").dec_normal(), { noremap = true })
keymap("v", "<C-a>", require("dial.map").inc_visual(), { noremap = true })
keymap("v", "<C-x>", require("dial.map").dec_visual(), { noremap = true })
keymap("v", "g<C-a>", require("dial.map").inc_gvisual(), { noremap = true })
keymap("v", "g<C-x>", require("dial.map").dec_gvisual(), { noremap = true })

-- alternate-toggler
keymap("n", "ta", ":ToggleAlternate<CR>", opts)

-- goto-preview
keymap("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
keymap("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true })
keymap("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
keymap("n", "gpr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })

-- iswap.nvim
keymap("n", "<leader>si", ":ISwap<CR>", opts)
keymap("n", "<leader>sw", ":ISwapWith<CR>", opts)

-- renamer.nvim
keymap("i", "<F2>", '<cmd>lua require("renamer").rename()<cr>', opts)
keymap("n", "<F2>", '<cmd>lua require("renamer").rename()<cr>', opts)
keymap("v", "<F2>", '<cmd>lua require("renamer").rename()<cr>', opts)

-- keymap("v", "<C-S-c>", '"+y', opts)
keymap("v", "<leader>c", '"+y', opts)

-- Map jk to esc in o mode
keymap("o", "jk", "<esc>", opts)

-- nvim-dap
keymap("n", "<leader>wb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>wc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>wo", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>wi", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>wr", "<cmd>lua require'dap'.repl.open()<cr>", opts)

keymap("n", "<leader><tab>", "<c-^>", opts)

-- color-picker
keymap("n", "<C-c>", "<cmd>PickColor<cr>", opts)
keymap("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)

--toggleterm
keymap("n", "<leader><C-\\>", "<cmd>ToggleTerm 2<CR>", opts)

-- Suda
keymap("n", "<C-S>", "<cmd>SudaWrite<CR>", opts)

-- code_runner.nvim
keymap('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
keymap('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
keymap('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
keymap('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
keymap('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
keymap('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
keymap('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
