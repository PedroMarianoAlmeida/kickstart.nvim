-- Save and restore buffers, windows, and cursor positions for each project.
vim.pack.add {
  { src = 'https://github.com/rmagatti/auto-session', version = 'main' },
}

require('auto-session').setup {
  auto_restore = true,
  auto_save = true,
  git_use_branch_name = true,
  close_filetypes_on_save = { 'checkhealth', 'neo-tree', 'neo-tree-popup', 'trouble' },
}

vim.keymap.set('n', '<leader>wr', '<cmd>AutoSession restore<CR>', { desc = '[W]orkspace session [R]estore' })
vim.keymap.set('n', '<leader>ws', '<cmd>AutoSession search<CR>', { desc = '[W]orkspace [S]ession search' })
