-- Context-aware hover windows for LSP information and diagnostics.
vim.pack.add {
  { src = 'https://github.com/lewis6991/hover.nvim', version = 'main' },
}

require('hover').config {
  providers = {
    'hover.providers.diagnostic',
    'hover.providers.lsp',
  },
  preview_opts = { border = 'rounded' },
}

vim.keymap.set('n', 'K', function() require('hover').open() end, { desc = 'Hover cursor' })
vim.keymap.set('n', 'gK', function() require('hover').enter() end, { desc = 'Enter hover window' })
vim.keymap.set('n', ']h', function() require('hover').switch 'next' end, { desc = 'Next hover source' })
vim.keymap.set('n', '[h', function() require('hover').switch 'previous' end, { desc = 'Previous hover source' })
vim.keymap.set('n', '<MouseMove>', function() require('hover').mouse() end, { desc = 'Hover mouse' })
vim.o.mousemoveevent = true
