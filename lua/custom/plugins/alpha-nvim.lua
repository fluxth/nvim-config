vim.pack.add {
  'https://github.com/goolord/alpha-nvim',
  -- dependencies
  'https://github.com/nvim-tree/nvim-web-devicons',
}

local startify = require 'alpha.themes.startify'
startify.file_icons.provider = 'devicons'

require('alpha').setup(startify.config)
