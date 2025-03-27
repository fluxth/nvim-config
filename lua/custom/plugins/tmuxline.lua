return {
  'edkolev/tmuxline.vim',
  event = 'VeryLazy',
  config = function()
    vim.g.tmuxline_powerline_separators = '0'
    vim.g.tmuxline_preset = {
      a = '#S',
      win = '#I:#W#F',
      cwin = '#I:#W#F',
      x = '#{prefix_highlight}',
      y = '#(whoami)@#h',
      options = {
        ['status-justify'] = 'left',
      },
    }

    vim.cmd 'Tmuxline vim_statusline_3'
    vim.cmd 'TmuxlineSnapshot! ~/.config/tmux/tmux-status.conf'
  end,
}
