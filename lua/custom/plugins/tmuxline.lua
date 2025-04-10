return {
  'edkolev/tmuxline.vim',
  event = 'VeryLazy',
  config = function()
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

    if vim.env.TMUX ~= nil then
      vim.cmd 'Tmuxline'
      vim.cmd 'TmuxlineSnapshot! ~/.config/tmux/tmux-status.conf'
    end
  end,
}
