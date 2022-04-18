# NVIM Configuration

## Summary

A guide to my nvim set up to be able to recreate it in the future and to gain more understanding of it.

I will try be detail but avoid re-writing here what already is in the files. The goal is to add more clarity and to provide resources.

### Steps To Set Up

- basic plugins and vim options
- colorscheme
- autopairs
- keymaps
- bufferline

**TO-DO**

- nvim-tree
- lualine
- Gitsigns
- LSP
- Treesitter
- Autocompletion
- telescope
- Toggle term
- Lazygit
- colorizer (colors hex)
- comment

Nvim-Tree

``` lua
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
```

LSP

[reddit article about changes dated april 17 2022](https://www.reddit.com/r/neovim/comments/u5si2w/breaking_changes_inbound_next_few_weeks_for/)

``` lua
 use 'hrsh7th/vim-vsnip' -- https://github.com/hrsh7th/vim-vsnip
 use 'neovim/nvim-lspconfig' -- https://github.com/neovim/nvim-lspconfig
 use 'hrsh7th/nvim-cmp' -- https://github.com/hrsh7th/nvim-cmp
 use 'hrsh7th/cmp-nvim-lsp' -- https://github.com/hrsh7th/cmp-nvim-lsp
 use 'williamboman/nvim-lsp-installer' -- https://github.com/williamboman/nvim-lsp-installer
 use 'onsails/lspkind-nvim' -- https://github.com/onsails/lspkind-nvim
```

Treesitter

``` lua
 use 'nvim-treesitter/nvim-treesitter' -- https://github.com/nvim-treesitter/nvim-treesitter
 use 'nvim-treesitter/nvim-treesitter-refactor' -- https://github.com/nvim-treesitter/nvim-treesitter-refactor
 use 'RRethy/nvim-treesitter-endwise' -- https://github.com/RRethy/nvim-treesitter-endwise
```
