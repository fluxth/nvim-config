vim.pack.add {
  'https://github.com/chrisgrieser/nvim-spider',
}

vim.keymap.set('n', 'e', "<cmd>lua require('spider').motion('e')<CR>")
vim.keymap.set('o', 'e', "<cmd>lua require('spider').motion('e')<CR>")
vim.keymap.set('x', 'e', "<cmd>lua require('spider').motion('e')<CR>")

vim.keymap.set('n', 'w', "<cmd>lua require('spider').motion('w')<CR>")
vim.keymap.set('o', 'w', "<cmd>lua require('spider').motion('w')<CR>")
vim.keymap.set('x', 'w', "<cmd>lua require('spider').motion('w')<CR>")

vim.keymap.set('n', 'b', "<cmd>lua require('spider').motion('b')<CR>")
vim.keymap.set('o', 'b', "<cmd>lua require('spider').motion('b')<CR>")
vim.keymap.set('x', 'b', "<cmd>lua require('spider').motion('b')<CR>")
