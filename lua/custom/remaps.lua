local keymap = vim.keymap

-- General -------------------------------------

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Move selected lines up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep up/down centered on screen
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")

-- Keep search centered on screen
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Delete char without filling register
keymap.set("n", "x", '"_x')
-- Paste without losing the yank
keymap.set("x", "p", "\"_dP")
-- Leader d to delete to void register
keymap.set({ 'n', 'v' }, "<leader>d", "\"_d")

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Navigate the quickfix list (errors)
keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
keymap.set('n', '<C-j>', '<cmd>cprex<CR>zz')

keymap.set('n', '<leader>gs', '<cmd>Git<cr>')
keymap.set('n', '<leader>gd', '<cmd>Gvdiff<cr>')
keymap.set('n', '<leader>gp', '<cmd>Git push<cr>')

-- Window splitting -------------------------------------------

-- navigation comes from tmux plugin. Use <C-h/j/k/l>
keymap.set("n", "<leader>l", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>j", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>x", "<cmd>close<CR>", { desc = "Close current split" })

-- Telescope
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>F", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })

-- Open file tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer

-- Harpoon
local harpoon = require "harpoon"

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)
