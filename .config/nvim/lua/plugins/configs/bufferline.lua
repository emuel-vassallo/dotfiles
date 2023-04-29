local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup({
  options = {
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    show_close_icon = false,
    left_trunc_marker = "",
    right_trunc_marker = "",
    name_formatter = function(buf)
      if buf.name:match("%.md") then
        return vim.fn.fnamemodify(buf.name, ":t:r")
      end
    end,
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 22,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    separator_style = "thin",
    always_show_bufferline = true,
    themable = true,
    offsets = {
      { filetype = "neo-tree", text = "", padding = 0 },
      { filetype = "alpha", text = "", padding = 0 },
      { filetype = "Outline", text = "", padding = 0 },
    },

    custom_filter = function(buf_number)
      -- Func to filter out our managed/persistent split terms
      local present_type, type = pcall(function()
        return vim.api.nvim_buf_get_var(buf_number, "term_type")
      end)

      if present_type then
        if type == "vert" then
          return false
        elseif type == "hori" then
          return false
        end
        return true
      end

      return true
    end,
    
    diagnostics = false,
    -- diagnostics_update_in_insert = true,
    -- diagnostics_indicator = function(count, level)
    -- 	local icon = level:match("error") and " " or " "
    -- 	return "" .. icon .. count
    -- end,
  },
  highlights = {
    fill = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    background = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    buffer_visible = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },

    close_button = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    close_button_visible = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    tab_selected = {
      fg = { attribute = "fg", highlight = "Cursorline" },
      bg = { attribute = "bg", highlight = "Cursorline" },
    },
    tab = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    tab_close = {
      fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultError" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
    duplicate_selected = {
      fg = { attribute = "fg", highlight = "TabLineSel" },
      bg = { attribute = "bg", highlight = "TabLineSel" },
    },
    duplicate_visible = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    duplicate = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    modified = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    modified_selected = {
      fg = { attribute = "fg", highlight = "Normal" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
    modified_visible = {
      fg = { attribute = "fg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    separator = {
      fg = { attribute = "bg", highlight = "TabLine" },
      bg = { attribute = "bg", highlight = "TabLine" },
    },
    separator_selected = {
      fg = { attribute = "bg", highlight = "Normal" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
    indicator_selected = {
      fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
      bg = { attribute = "bg", highlight = "Tabline" },
    },
  },
})
