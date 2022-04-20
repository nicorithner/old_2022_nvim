# Setting up LSP And Closely Related Functionality

## TOC

- [Install nvim-lspconfig](#lspconfig)
- [Basic LSP Keybindings](#basic-keybindings)
- [Install nvim-lsp-installer](#nvim-lsp-installer)

<hr/>

## Lspconfig

To enable LSPinfo we need to first install `nvim-lspconfig` in plugins.lua

```lua
return require('packer').startup(function(use)
  use 'neovim/nvim-lspconfig'
end)
```

At this point we should have available commands like :LspInfo

To configure I'm using the example in [Suggested Configuration](https://github.com/neovim/nvim-lspconfig#suggested-configuration)

<hr/>

## Install Local Packages

Without [nvim-lsp-installer](#nvim-lsp-installer) some languages packages need to be available locally and need to be installed outside Neovim locally.

To check what NPM packages you already have installed globally run `npm list -g --depth 0`

### Install npm packages

- python: `npm i -g pyright`
- js: `npm install -g typescript typescript-language-server`

### Install Solargraph for Ruby

- solargraph:
  - with rvm:
    - first install rvm. [visit rvm.io for instruciton](https://rvm.io/rvm/install)
    - `rvm @global do gem install solargraph`
  - without rvm: `gem install --user-install solargraph`

### Install Sumneko/Lua-language-server

- use precomplied binaries
  `$ brew install lua-language-server`

<hr/>

## Basic Keybindings

'n' = normal mode

* 'gd' = go to definition
* 'gr' = go to references
* 'K' = Displays hover information about the symbol under the cursor in a floating window.

<hr/>

## Nvim-lsp-installer

[plugin github link](https://github.com/williamboman/nvim-lsp-installer)

Provide with a simple interface to install packages and installs packages directly without having to set up manually.

```lua
use("williamboman/nvim-lsp-installer")
```

[nvim-lsp-installer configuration](https://github.com/williamboman/nvim-lsp-installer/wiki/Advanced-Configuration)

this config replaces the lsp.config set up but.

### Usage

`$ :LspInstall <package>`

<hr/>
<hr/>

## Temporary notes

[reddit article about changes dated april 17 2022](https://www.reddit.com/r/neovim/comments/u5si2w/breaking_changes_inbound_next_few_weeks_for/)

```lua
 use 'hrsh7th/vim-vsnip' -- https://github.com/hrsh7th/vim-vsnip
 use 'hrsh7th/nvim-cmp' -- https://github.com/hrsh7th/nvim-cmp
 use 'hrsh7th/cmp-nvim-lsp' -- https://github.com/hrsh7th/cmp-nvim-lsp
 use 'onsails/lspkind-nvim' -- https://github.com/onsails/lspkind-nvim . This tiny plugin adds vscode-like pictograms to neovim built-in lsp
```
