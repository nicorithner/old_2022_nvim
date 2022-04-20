local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end
-- include treesitter and its config
configs.setup({

	ensure_installed = {
		"ruby",
		"c",
		"cpp",
		"python",
		"lua",
		"typescript",
		"regex",
		"bash",
		"cmake",
		"css",
		"javascript",
		"html",
		"comment",
		"java",
	},
	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = true,
	},
	autopairs = { enable = true },
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = true,
	},
	rainbow = {
		enable = false,
		-- disable = { 'jsx', 'cpp' },
		extended_mode = true,
		max_file_lines = nil,
		-- colors = {},
		-- termcolors = {}
	},

	autotag = {
		enable = true,
	},

	refactor = {
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
		navigation = {
			enable = true,
			keymaps = {
				goto_definition = "gnd",
				list_definitions = "gnD",
				list_definitions_toc = "gO",
				goto_next_usage = "<A-]>",
				goto_previous_usage = "<A-[>",
			},
		},
	},
})
