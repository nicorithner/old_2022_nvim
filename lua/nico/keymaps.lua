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

-- Nvimtree
map("n", "<leader>n", ":NvimTreeToggle<cr>", opts)

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", opts)
map("n", "<leader>fgit", "<cmd>Telescope git_files<CR>", opts)

-- ToggleTerm
map("n", "<leader>lg", "<cmd>lua _LAZYGIT_TOGGLE()<cr>", opts) -- q to exit
map("n", "<leader>node", "<cmd>lua _NODE_TOGGLE()<cr>", opts) -- .exit to close
map("n", "<leader>irb", "<cmd>lua _IRB_TOGGLE()<cr>", opts) -- exit to close, no leading dot.
map("n", "<leader>ht", "<cmd>lua _HTOP_TOGGLE()<cr>", opts) -- q to exit
