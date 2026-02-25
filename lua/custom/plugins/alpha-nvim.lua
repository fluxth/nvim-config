vim.pack.add {
  'https://github.com/goolord/alpha-nvim',
  -- dependencies
  'https://github.com/nvim-mini/mini.nvim', -- icons
}

local startify = require 'alpha.themes.startify'
startify.file_icons.provider = 'mini'

require('alpha').setup(startify.config)
