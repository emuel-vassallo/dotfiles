vim.opt.termguicolors = true

local base16 = require("base16")

-- local colors = {
-- 	"#151515",
-- 	"#1f1f1f",
-- 	"#282828",
-- 	"#404040",
-- 	"#e8e3e3",
-- 	"#e8e3e3",
-- 	"#e8e3e3",
-- 	"#e8e3e3",
-- 	"#b66467",
-- 	"#d9bc8c",
-- 	"#d9bc8c",
-- 	"#8c977d",
-- 	"#8aa6a2",
-- 	"#8da3b9",
-- 	"#a988b0",
-- 	"#e8e3e3",
-- }

_G.paradise_dark = base16.theme_from_array({
	"151515",
	"1f1f1f",
	"282828",
	"474747",
	"e8e3e3",
	"e8e3e3",
	"e8e3e3",
	"e8e3e3",
	"b66467",
	"d9bc8c",
	"d9bc8c",
	"8c977d",
	"8aa6a2",
	"8da3b9",
	"a988b0",
	"e8e3e3",
})
base16(_G.paradise_dark, true)

vim.api.nvim_command([[
  exe "hi StatusInactive guibg=background guifg=".g:terminal_color_8
  exe "hi StatusNormal guifg=background guibg=".g:terminal_color_2
  exe "hi StatusReplace guifg=background guibg=".g:terminal_color_1
  exe "hi StatusInsert guifg=background guibg=".g:terminal_color_2
  exe "hi StatusCommand guifg=background guibg=".g:terminal_color_3
  exe "hi StatusVisual guifg=background guibg=".g:terminal_color_4
  exe "hi StatusTerminal guifg=background guibg=".g:terminal_color_5

  exe "hi FocusedSymbol guifg=".g:terminal_color_4
  exe "hi NeoTreeModified guifg=".g:terminal_color_9
  exe "hi NeoTreeGitAdded guifg=".g:terminal_color_2
  exe "hi NeoTreeGitDeleted guifg=".g:terminal_color_9
  exe "hi NeoTreeGitRenamed guifg=".g:terminal_color_13
  exe "hi NeoTreeGitConflict guifg=".g:terminal_color_3
  exe "hi NeoTreeGitUntracked guifg=".g:terminal_color_9
  exe "hi NeoTreeGitModified guifg=".g:terminal_color_3

  exe "hi CmpItemKindFunction guibg=NONE guifg=".g:terminal_color_15
  exe "hi CmpItemKindMethod guibg=NONE guifg=".g:terminal_color_15
  exe "hi CmpItemKindVariable guibg=NONE guifg=".g:terminal_color_14
  exe "hi CmpItemKindKeyword guibg=NONE guifg=".g:terminal_color_5
  exe "hi CmpItemKindText guifg=".g:terminal_color_10
  exe "hi CmpItemKindConstructor guifg=".g:terminal_color_11
  exe "hi CmpItemKindField guifg=".g:terminal_color_14
  exe "hi CmpItemKindClass guifg=".g:terminal_color_10
  exe "hi CmpItemKindInterface guifg=".g:terminal_color_10
  exe "hi CmpItemKindModule guifg=".g:terminal_color_14
  exe "hi CmpItemKindProperty guifg=".g:terminal_color_14
  exe "hi CmpItemKindValue guifg=".g:terminal_color_10
  exe "hi CmpItemKindEnum guifg=".g:terminal_color_10
  exe "hi CmpItemKindSnippet guifg=".g:terminal_color_12
  exe "hi CmpItemKindFile guifg=".g:terminal_color_14
  exe "hi CmpItemKindEnumMember guifg=".g:terminal_color_14
  exe "hi CmpItemKindConstant guifg=".g:terminal_color_11
  exe "hi CmpItemKindStruct guifg=".g:terminal_color_10
  exe "hi CmpItemKindTypeParameter guifg=".g:terminal_color_10

  exe "hi DiagnosticError guifg=".g:terminal_color_9
  exe "hi DiagnosticWarn guifg=".g:terminal_color_3
  exe "hi DiagnosticInfo guifg=".g:terminal_color_14

  exe "hi Hlargs guifg=".g:terminal_color_1

  hi EndOfBuffer guifg=background
  hi LineNr guibg=background
  hi LineNr guifg=#424242
  hi SignColumn guibg=background
  hi VertSplit guibg=background

  hi! link TabLineSel StatusInsert
  hi TabLine guibg=#1f1f1f
  hi TabLine guifg=#a5a0a0
  hi TabLineFill guibg=#151515

  hi FoldColumn guibg=background
  hi DiffAdd guibg=background
  hi DiffChange guibg=background
  hi DiffDelete guibg=background
  hi DiffText guibg=background

  hi Pmenu guibg=#151515 guifg=#424242
  hi PmenuSbar guibg=#151515 guifg=#151515
  hi PmenuThumb guibg=#424242 guifg=#242424
  hi PmenuSel guibg=#242424 guifg=#BBB6B6

  hi CmpItemAbbrMatch guifg=#e8e3e3
  hi CmpItemAbbrMatchFuzzy guifg=#e8e3e3
  hi CmpItemAbbr guifg=#424242
  hi CmpBorder guifg=#424242
  hi CmpItemMenu guifg=#888888

  hi NormalFloat guifg=#e8e3e3
  hi NormalFloat guibg=none

  hi WinSeparator guifg=#1f1f1f
  
  hi GitSignsAddNr guifg=#8c977d guibg=#151515
  hi GitSignsChangeNr guifg=#8da3bd guibg=#151515
  hi GitSignsDeleteNr guifg=#b66467 guibg=#151515

  hi link illuminatedWord Visual
]])
