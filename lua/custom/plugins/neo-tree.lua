vim.pack.add {
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range '3',
  },
  -- dependencies
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  -- optional, but recommended
  'https://github.com/nvim-tree/nvim-web-devicons',
}

require('neo-tree').setup {
  close_if_last_window = true,
  window = {
    position = 'left',
    width = 36,
    mappings = {
      ['l'] = 'open',
      ['h'] = 'close_node',
    },
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_by_name = {
        '.git',
      },
    },
    follow_current_file = {
      enabled = true,
    },
  },
}

vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'NeoTree toggle' })
vim.keymap.set('v', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'NeoTree toggle' })

vim.keymap.set('n', '<leader>b', '<cmd>Neotree toggle buffers<CR>', { desc = 'NeoTree buffers toggle' })
vim.keymap.set('v', '<leader>b', '<cmd>Neotree toggle buffers<CR>', { desc = 'NeoTree buffers toggle' })
