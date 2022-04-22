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
- [Telescope](#telescope)
- [Treesitter](#treesitter)
- [ToggleTerm](#toggleterm)
- [Autocompletion](#autocompletion)
- [Vim-Hexokinase](#vim-hexokinase)
- [Nvim-comment](#nvim-comment)

<hr/>

## Autocompletion

### CMP Plugins

* [Link to hrsh7th/nvim-cmp docs](https://github.com/hrsh7th/nvim-cmp)
* [Link to hrsh7th/cmp-buffer docs](https://github.com/hrsh7th/cmp-buffer)
* [Link to hrsh7th/cmp-path docs](https://github.com/hrsh7th/cmp-path)
* [Link to hrsh7th/cmp-cmdline docs](https://github.com/hrsh7th/cmp-cmdline)
* [Link to saadparwaiz1/cmp_luasnip docs](https://github.com/saadparwaiz1/cmp_luasnip)
* [Link to hrsh7th/cmp-nvim-lsp docs](https://github.com/hrsh7th/cmp-nvim-lsp)
* [Link to hrsh7th/cmp-nvim-lua docs](https://github.com/hrsh7th/cmp-nvim-lua)

```lua
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp" -- nvim-cmp source for neovim's built-in language server client
  use "hrsh7th/cmp-nvim-lua" -- nvim-cmp source for neovim Lua API
```

### Snippets Plugins

* [Link to L3MON4D3/LuaSnip docs](https://github.com/L3MON4D3/LuaSnip)
* [Link to rafamadriz/friendly-snippets docs](https://github.com/rafamadriz/friendly-snippets)

``` lua
use("L3MON4D3/LuaSnip") --snippet engine
use("rafamadriz/friendly-snippets") -- a bunch of snippets to use
```

<hr/>

## Bufferline

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

## Nvim-comment

* [Link to terrortylor/nvim-comment docs](https://github.com/terrortylor/nvim-comment)

``` lua
use("terrortylor/nvim-comment") -- https://github.com/terrortylor/nvim-comment
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

## Vim-Hexokinase

A color highlighter to help visualize color values in css and html files.

``` lua
use({ 'rrethy/vim-hexokinase', run = 'make hexokinase' } ) -- https://github.com/RRethy/vim-hexokinase
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

## Telescope

[Link to Telescope docs](https://github.com/nvim-telescope/telescope.nvim)
[Link to Telescope-fzf-native docs](https://github.com/nvim-telescope/telescope-fzf-native.nvim)

```lua
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
```

<hr/>

## ToggleTerm

[Link to ToggleTerm docs](https://github.com/akinsho/toggleterm.nvim)

```lua
  use {"akinsho/toggleterm.nvim"}
```

<hr/>

## Treesitter

[Link to nvim-treesitter docs](https://github.com/nvim-treesitter/nvim-treesitter)
[Link to treesitter-refactor docs](https://github.com/nvim-treesitter/nvim-treesitter-refactor)
[Link to nvim-treesitter-endwise docs](https://github.com/RRethy/nvim-treesitter-endwise)

```lua
 use 'nvim-treesitter/nvim-treesitter'
 use 'nvim-treesitter/nvim-treesitter-refactor'
 use 'RRethy/nvim-treesitter-endwise'
```
