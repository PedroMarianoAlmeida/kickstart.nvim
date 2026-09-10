-- Trouble provides a focused list for diagnostics, references, and quickfix items.
vim.pack.add {
  { src = 'https://github.com/folke/trouble.nvim', version = vim.version.range '*' },
}

require('trouble').setup {}

vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<CR>', { desc = 'Diagnostics (Trouble)' })
vim.keymap.set('n', '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<CR>', { desc = 'Buffer diagnostics (Trouble)' })
vim.keymap.set('n', '<leader>xL', '<cmd>Trouble loclist toggle<CR>', { desc = 'Location list (Trouble)' })
vim.keymap.set('n', '<leader>xQ', '<cmd>Trouble qflist toggle<CR>', { desc = 'Quickfix list (Trouble)' })
