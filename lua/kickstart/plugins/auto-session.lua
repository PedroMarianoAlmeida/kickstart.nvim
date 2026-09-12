-- Save and restore buffers, windows, and cursor positions for each project.
vim.pack.add {
  { src = 'https://github.com/rmagatti/auto-session', version = 'main' },
}

-- Preview commands open live-server in a terminal split. Keep those
-- short-lived terminals and their window-local directories out of sessions.
vim.opt.sessionoptions:remove 'terminal'
vim.opt.sessionoptions:remove 'curdir'

require('auto-session').setup {
  -- Restore only on demand with <leader>wr; a plain `nvim` keeps its launch cwd.
  auto_restore = false,
  auto_save = true,
  git_use_branch_name = true,
  close_filetypes_on_save = { 'checkhealth', 'neo-tree', 'neo-tree-popup', 'trouble' },
}

vim.keymap.set('n', '<leader>wr', '<cmd>AutoSession restore<CR>', { desc = '[W]orkspace session [R]estore' })
vim.keymap.set('n', '<leader>ws', '<cmd>AutoSession search<CR>', { desc = '[W]orkspace [S]ession search' })
