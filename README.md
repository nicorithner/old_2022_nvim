# NVIM Configuration

## Summary

A guide to my nvim set up to be able to recreate it in the future and to gain more understanding of it.

I will try be detail but avoid re-writing here what already is in the files. The goal is to add more clarity and to provide resources.

### Steps To Set Up

- Basic plugins and vim options
- Colorscheme
- Autopairs
- Keymaps
- [Bufferline](#bufferline)
- [Nvim-tree](#nvim-tree)
- [Lualine](#lualine)
- [Gitsigns](#gitsigns)
- [Vim-surround](#vim-surround)
- [LSP and LSP Installer](#lsp-and-lsp-installer)
- [ Treesitter ](#treesitter)

**TO-DO**

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

## Gitsigns

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

## LSP and LSP Installer

Even though LSP (Language Server Protocol) is native in Neovim it requires quite a bit of set up.

Use this guide [LSP-Guide]('/lua/nico/lsp/how-to-lsp.md')

```lua
use 'neovim/nvim-lspconfig'
use 'williamboman/nvim-lsp-installer'
```

### Vim-Surround

[vim-surround](https://github.com/tpope/vim-surround)

```lua
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

```HTML
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
