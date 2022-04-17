local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local map = vim.api.nvim_set_keymap

--Map space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


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

