local keymap = vim.keymap
local opts = { noremap = true }

keymap.set('n', '<leader>pv', vim.cmd.Ex)

keymap.set("i", "jk", "<Esc>", opts)
keymap.set("i", "kj", "<Esc>", opts)

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- split window
keymap.set("n", "<leader>ss", ":split<Return>", opts)
keymap.set("n", "<leader>sv", ":vsplit<Return>", opts)

-- switch window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Neotree
keymap.set("n", "<C-b>", "<Cmd>Neotree toggle<CR>")
