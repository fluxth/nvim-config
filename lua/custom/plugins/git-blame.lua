vim.pack.add {
  'https://github.com/f-person/git-blame.nvim',
}

require('gitblame').setup {
  enabled = true, -- if you want to enable the plugin
  message_template = '   ✱ <author> • <date> • <summary>', -- template for the blame message, check the Message template section for more options
  message_when_not_committed = '   ✱ Not Committed Yet',
  date_format = '%r', -- template for the date, check Date format section for more options
  virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
  highlight_group = 'GruvboxBg2', -- subtler text
  delay = 1000, -- 1 sec
}
