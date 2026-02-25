vim.pack.add {
  'https://github.com/zapling/mason-lock.nvim',
  -- dependencies
  'https://github.com/williamboman/mason.nvim',
}

require('mason-lock').setup {
  lockfile_path = vim.fn.stdpath 'config' .. '/mason-lock.json',
}
