local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	-- Plugins without additional configuration
	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" }) -- preview markdown
	use("sbdchd/neoformat") -- formatter https://github.com/sbdchd/neoformahttps://github.com/sbdchd/neoformatt
	use("kyazdani42/nvim-web-devicons") -- https://github.com/kyazdani42/nvim-web-devicons
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/plenary.nvim") -- https://github.com/nvim-lua/plenary.nvim
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("wakatime/vim-wakatime") -- wakatime tracks my activity in https://wakatime.com/dashboard
	use("tpope/vim-surround") -- changes surrounding quotes or brackets and more. https://github.com/tpope/vim-surround

	-- Autocompletion - CMP plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin -- https://github.com/hrsh7th/nvim-cmp
	use("hrsh7th/cmp-buffer") -- buffer completions -- https://github.com/hrsh7th/cmp-buffer
	use("hrsh7th/cmp-path") -- path completions -- https://github.com/hrsh7th/cmp-path
	use("hrsh7th/cmp-cmdline") -- cmdline completions -- https://github.com/hrsh7th/cmp-cmdline
	use("saadparwaiz1/cmp_luasnip") -- snippet completions -- https://github.com/saadparwaiz1/cmp_luasnip
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in language server client. -- https://github.com/hrsh7th/cmp-nvim-lsp
	use("hrsh7th/cmp-nvim-lua") -- nvim-cmp source for neovim Lua API -- https://github.com/hrsh7th/cmp-nvim-lua

	-- Autcompletion - Snippets
	use("L3MON4D3/LuaSnip") --snippet engine -- https://github.com/L3MON4D3/LuaSnip
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use -- https://github.com/rafamadriz/friendly-snippets

	-- Autopairs
	use("windwp/nvim-autopairs") -- https://github.com/windwp/nvim-autopairs

	-- Bufferline
	use({
		"akinsho/nvim-bufferline.lua", -- https://github.com/akinsho/bufferline.nvim
		tag = "*",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Colorschemes
	use("folke/tokyonight.nvim") -- https://github.com/folke/tokyonight.nvim

  -- Comments
  use("terrortylor/nvim-comment") -- https://github.com/terrortylor/nvim-comment

	-- Gitsigns
	use({
		"lewis6991/gitsigns.nvim", -- https://github.com/lewis6991/gitsigns.nvim
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

  -- Indent Blank Line
  use( "lukas-reineke/indent-blankline.nvim" )

	-- vim-hexokinase
  use({ 'rrethy/vim-hexokinase', run = 'make hexokinase' } ) -- https://github.com/RRethy/vim-hexokinase

	-- Lualine
	use({
		"hoob3rt/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
	})

	-- LSP (Language Server Protocol)
	use("neovim/nvim-lspconfig") -- https://github.com/neovim/nvim-lspconfig
	use("williamboman/nvim-lsp-installer") -- https://github.com/williamboman/nvim-lsp-installer
  use("WhoIsSethDaniel/toggle-lsp-diagnostics.nvim") -- https://github.com/WhoIsSethDaniel/toggle-lsp-diagnostics.nvim
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters -- https://github.com/jose-elias-alvarez/null-ls.nvim
  use "ray-x/lsp_signature.nvim" -- Show function signature when you type -- https://github.com/ray-x/lsp_signature.nvim
  use "b0o/SchemaStore.nvim"
  use {
    "folke/trouble.nvim", -- https://github.com/folke/trouble.nvim
    cmd = "TroubleToggle",
  } -- A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing.

	-- Nvim-tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim", -- https://github.com/nvim-telescope/telescope.nvim
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
  use { "nvim-telescope/telescope-file-browser.nvim" } -- https://github.com/nvim-telescope/telescope-file-browser.nvim

	-- ToggleTerm
	use({ "akinsho/toggleterm.nvim" }) -- https://github.com/akinsho/toggleterm.nvim

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- https://github.com/nvim-treesitter/nvim-treesitter
	use("nvim-treesitter/nvim-treesitter-refactor") -- https://github.com/nvim-treesitter/nvim-treesitter-refactor
	use("RRethy/nvim-treesitter-endwise") -- https://github.com/RRethy/nvim-treesitter-endwise

  -- Trouble
--  use("folke/trouble.nvim") -- https://github.com/folke/trouble.nvim

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
