-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- turn on literal tabbing with leader
keymap("i", "<Shift><Tab>", "<Tab>", opts)

-- Clear highlights
keymap("n", "\\", "<cmd>nohlsearch<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- NvimTree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "cc", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)

-- delete in normal mode
keymap("n", "<bs>", "X", opts)

-- remap pane keys
keymap("n", "<Tab>", "<C-w>w", opts)
keymap("n", "<Bar>", ":vsplit<CR>", opts)

-- fix the Q/q
vim.cmd("command Q q")
vim.cmd("command W w")
