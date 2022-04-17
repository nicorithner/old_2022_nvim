-- installs packer if not already installed
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- require plugins files
require('nico.autopairs')
require('nico.autosave')
require('nico.bufferline')
require('nico.colour')
require('nico.colorizer')
require('nico.colorscheme')
require('nico.commands')
require('nico.comment')
require('nico.dashboard')
require('nico.gitsigns')
require('nico.keymaps')
require('nico.lualine')
require('nico.lsp-cmp')
require('nico.lsp-config')
require('nico.lazygit')
require('nico.nvim-tree')
require('nico.options')
require('nico.plugins')
require('nico.treesitter')
require('nico.toggleTerm')
require('nico.toggle_lsp_diagnostics')
require('nico.telescope')

-- CpHelper config
vim.g.cphdir = os.getenv( 'HOME' )..'/problems'

-- Rooter config
vim.g.rooter_pattern = { 'input1', 'output1' }
