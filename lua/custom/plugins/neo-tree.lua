return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
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
  },
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'NeoTree toggle' } },
  },
}
