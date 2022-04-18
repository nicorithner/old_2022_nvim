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
- nvim-tree
- lualine
- Gitsigns

**TO-DO**

- LSP
- Treesitter
- Autocompletion
- telescope
- Toggle term
- Lazygit
- colorizer (colors hex)
- comment
- [Trouble.nvim](https://github.com/folke/trouble.nvim)

### Bufferline

#### Plugin

[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)

```lua
  use({
  	"akinsho/nvim-bufferline.lua",
  	tag = "*",
  	requires = "kyazdani42/nvim-web-devicons",
  })
```

#### Keymaps

```lua
  map('n', 'f', ':BufferLinePick<CR>', opts)
  map('n', 'F', ':BufferLinePickClose<CR>', opts)
  map('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
  map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)
  map('n', 'm.', ':BufferLineMoveNext<CR>', opts)
  map('n', 'm,', ':BufferLineMovePrev<CR>', opts)
```

<hr/>
### Gitsigns

#### Plugins

[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)

```lua
 use {
   'lewis6991/gitsigns.nvim',
   requires = {
     'nvim-lua/plenary.nvim'
   }
 }
```

<hr/>

### Lualine

[nvim-lualine](https://github.com/nvim-lualine/lualine.nvim)

```lua
  use {
    'hoob3rt/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
```

<hr/>

### Nvim-Tree

[nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)

```lua
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
```

### LSP

[reddit article about changes dated april 17 2022](https://www.reddit.com/r/neovim/comments/u5si2w/breaking_changes_inbound_next_few_weeks_for/)

```lua
 use 'hrsh7th/vim-vsnip' -- https://github.com/hrsh7th/vim-vsnip
 use 'neovim/nvim-lspconfig' -- https://github.com/neovim/nvim-lspconfig
 use 'hrsh7th/nvim-cmp' -- https://github.com/hrsh7th/nvim-cmp
 use 'hrsh7th/cmp-nvim-lsp' -- https://github.com/hrsh7th/cmp-nvim-lsp
 use 'williamboman/nvim-lsp-installer' -- https://github.com/williamboman/nvim-lsp-installer
 use 'onsails/lspkind-nvim' -- https://github.com/onsails/lspkind-nvim
```
<hr/>

### Vim-Surround

[vim-surround](https://github.com/tpope/vim-surround)

``` lua
  use "tpope/vim-surround"
```
### Key bindings

"hello world"

- cs"' = 'hello world'
- ds' = hello world
- yss{ = { hello world } wraps the entire line with the curly braces
- ysiw[ = [ hello ] world -> With the cursor on the word wraps that word
- select word(s) <S + (> = (wraps selected text)

It also works with HTML
``` HTML
  yss<div> = <div>wraps the whole line</div>
  ysiw<span> = wraps the <span>word</span> the cursor is on
```

<hr/>

### Treesitter

```lua
 use 'nvim-treesitter/nvim-treesitter' -- https://github.com/nvim-treesitter/nvim-treesitter
 use 'nvim-treesitter/nvim-treesitter-refactor' -- https://github.com/nvim-treesitter/nvim-treesitter-refactor
 use 'RRethy/nvim-treesitter-endwise' -- https://github.com/RRethy/nvim-treesitter-endwise
```
