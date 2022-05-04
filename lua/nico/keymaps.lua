local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local map = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- --------- General Mapping
--Map space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Buffer Resize
map('n', '<Leader>[', ':vertical resize +5<CR>', { noremap = true, silent = true })
map('n', '<Leader>]', ':vertical resize -5<CR>', { noremap = true, silent = true })

-- --------- Plugins Mapping
-- Bufferline
map('n', 'f', ':BufferLinePick<CR>', opts)
map('n', 'F', ':BufferLinePickClose<CR>', opts)
map('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)
map('n', 'm.', ':BufferLineMoveNext<CR>', opts)
map('n', 'm,', ':BufferLineMovePrev<CR>', opts)

-- Clear search
map("n", "<leader>k", ":nohlsearch<CR>", opts)


-- Markdown Preview
map('n', '<leader>md', ':MarkdownPreviewToggle<CR>', term_opts)

-- Nvimtree
map("n", "<leader>n", ":NvimTreeToggle<cr>", opts)

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", opts)
map("n", "<leader>fgit", "<cmd>Telescope git_files<cr>", opts)
map("n", "<space>fb", "<cmd>Telescope file_browser<cr>", opts)
map("n", "<space>fp", "<cmd>Telescope projects<cr>", opts)

-- Toggle LSP Diagnostics
map('n', '<Leader>dd', ':ToggleDiag<CR>', { noremap = true, silent = true })
map('n', '<leader>du', '<Plug>(toggle-lsp-diag-underline)', {silent = true })
map('n', '<leader>ds', '<Plug>(toggle-lsp-diag-signs)', {silent = true })
map('n', '<leader>dv', '<Plug>(toggle-lsp-diag-vtext)', {silent = true })
map('n', '<leader>di', '<Plug>(toggle-lsp-diag-update_in_insert)', {silent = true })

-- ToggleTerm
map("n", "<leader>lg", "<cmd>lua _LAZYGIT_TOGGLE()<cr>", opts) -- q to exit
map("n", "<leader>js", "<cmd>lua _NODE_TOGGLE()<cr>", opts) -- .exit to close
map("n", "<leader>irb", "<cmd>lua _IRB_TOGGLE()<cr>", opts) -- exit to close, no leading dot.
map("n", "<leader>rc", "<cmd>lua _RAILS_CONSOLE_TOGGLE()<cr>", opts) -- q to exit
