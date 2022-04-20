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

	-- autopairs
	use("windwp/nvim-autopairs") -- https://github.com/windwp/nvim-autopairs

	-- bufferline
	use({
		"akinsho/nvim-bufferline.lua", -- https://github.com/akinsho/bufferline.nvim
		tag = "*",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Colorschemes
	use("folke/tokyonight.nvim") -- https://github.com/folke/tokyonight.nvim

	-- Gitsigns
	use({
		"lewis6991/gitsigns.nvim", -- https://github.com/lewis6991/gitsigns.nvim
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- Lualine
	use({
		"hoob3rt/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
	})

	-- Lsp
	use("neovim/nvim-lspconfig") -- https://github.com/neovim/nvim-lspconfig
	use("williamboman/nvim-lsp-installer") -- https://github.com/williamboman/nvim-lsp-installer

	-- Nvim-tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
