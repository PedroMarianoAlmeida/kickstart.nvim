# Pedro's Neovim config

My Neovim configuration, built from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). It keeps Kickstart's readable single-file approach and uses Neovim's built-in `vim.pack` package manager.

## What I changed

- Nerd Font icons are enabled.
- `<leader>cp` copies the current file path relative to Neovim's working directory; `<leader>ca` copies its absolute path.
- Modified file buffers save automatically when leaving Insert mode or switching buffers.
- Diagnostics use Nerd Font icons, severity sorting, rounded floating windows, and underlines for warnings and errors.
- Git changes use a compact gutter style through Gitsigns.
- The theme is TokyoNight Night, with non-italic comments.
- HTML, CSS, TypeScript, Lua, and Stylua language tooling is installed through Mason.
- Tree-sitter parsers cover Bash, C, CSS, HTML, JavaScript, Lua, Markdown, TSX, TypeScript, Vim, and related query files.

## Plugins

| Area | Plugins |
| --- | --- |
| Editing and UI | [guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim), [which-key.nvim](https://github.com/folke/which-key.nvim), [tokyonight.nvim](https://github.com/folke/tokyonight.nvim), [todo-comments.nvim](https://github.com/folke/todo-comments.nvim), and [mini.nvim](https://github.com/nvim-mini/mini.nvim) for icons, cursor and window animation, text objects, surrounds, and the statusline. |
| Git | [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim), including hunk navigation, staging, reset, blame, diff, and quickfix mappings. |
| Find and navigate | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim), its UI-select extension, and the native FZF sorter when `make` is available. [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) opens with `\\` and reveals the current file. |
| Language support | [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [mason.nvim](https://github.com/mason-org/mason.nvim), [fidget.nvim](https://github.com/j-hui/fidget.nvim), [conform.nvim](https://github.com/stevearc/conform.nvim), [blink.cmp](https://github.com/Saghen/blink.cmp), [LuaSnip](https://github.com/L3MON4D3/LuaSnip), and [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter). |
| Small quality-of-life tools | [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim), [nvim-autopairs](https://github.com/windwp/nvim-autopairs), [trouble.nvim](https://github.com/folke/trouble.nvim), [hover.nvim](https://github.com/lewis6991/hover.nvim), and [auto-session](https://github.com/rmagatti/auto-session). |

## Useful mappings

| Mapping | Action |
| --- | --- |
| `\\` | Open Neo-tree and reveal the current file. |
| `K` | Open diagnostic or LSP hover information. |
| `gK` | Enter the hover window. |
| `<leader>xx` | Toggle the diagnostics list in Trouble. |
| `<leader>xX` | Toggle diagnostics for the current buffer. |
| `<leader>xL` | Toggle the location list in Trouble. |
| `<leader>xQ` | Toggle the quickfix list in Trouble. |
| `<leader>wr` | Restore the saved project session. |
| `<leader>ws` | Search saved sessions. |
| `<leader>f` | Format the current buffer. |

The main configuration lives in [`init.lua`](init.lua). Extra plugin configuration lives in [`lua/kickstart/plugins`](lua/kickstart/plugins).
