-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local keymap = vim.keymap

-- General

-- Move selected lines up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep search centered on screen
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Delete char without filling register
keymap.set("n", "x", '"_x')
-- Paste without losing the yank
keymap.set("n", "p", '"0p')

-- Window splitting
-- navigation comes from tmux plugin. Use <C-h/j/k/l>
keymap.set("n", "<leader>l", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>j", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>x", "<cmd>close<CR>", { desc = "Close current split" })

-- Telescope
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<C-e>", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>F", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })

return {
  "christoomey/vim-tmux-navigator",
}
