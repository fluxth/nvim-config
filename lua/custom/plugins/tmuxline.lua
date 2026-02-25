vim.pack.add {
  'https://github.com/edkolev/tmuxline.vim',
}

vim.g.tmuxline_powerline_separators = '0'
vim.g.tmuxline_preset = {
  a = '#S',
  win = '#I:#W#F',
  cwin = '#I:#W#F',
  y = '#(whoami)@#h',
  options = {
    ['status-justify'] = 'left',
  },
}

require('custom.colorscheme').init_tmux()

-- NOTE: cannot directly call these right after without wrapping in autocmd
-- due to plugin load race condition
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    if vim.env.TMUX ~= nil then
      vim.cmd 'Tmuxline'
      vim.cmd 'TmuxlineSnapshot! ~/.config/tmux/tmux-status.conf'
    end
  end,
})
