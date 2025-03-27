return {
  init = function()
    local palette = require('gruvbox').palette

    vim.api.nvim_set_hl(0, 'StatusLine', { fg = palette.light3, bg = palette.dark1 })
    vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = palette.light4, bg = palette.dark0 })
    vim.api.nvim_set_hl(0, 'MiniStatuslineModeNormal', { fg = palette.dark0, bg = palette.light3, bold = true, nocombine = true })
    vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = palette.dark0, bg = palette.bright_aqua, bold = true, nocombine = true })
    vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = palette.dark0, bg = palette.neutral_purple, bold = true, nocombine = true })
  end,

  init_tmux = function()
    local palette = require('gruvbox').palette

    local reversed_statusline = { palette.dark1, palette.light3, 'bold' }
    local reversed_statusline_nc = { palette.light4, palette.dark0 }
    local statusline = { palette.light3, palette.dark1, 'bold' }
    local statusline_nc = { palette.dark4, palette.dark0 }

    vim.g.tmuxline_theme = {
      a = reversed_statusline,
      b = statusline,
      c = statusline_nc,
      x = statusline_nc,
      y = statusline,
      z = reversed_statusline,
      bg = statusline_nc,
      win = statusline_nc,
      cwin = statusline,
      pane = reversed_statusline_nc,
      cpane = reversed_statusline,
    }
  end,
}
