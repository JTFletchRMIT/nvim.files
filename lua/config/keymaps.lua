-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
--
--------------------------
--General Keymaps

-- use jk to exit insert mode
keymap.set("i", "jk", "<Esc>")

--------------------------
--PLUGIN Keymaps
--------------------------

-- Nvim-Tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- ZenMode keymaps
keymap.set("n", "<leader>z", "<cmd>ZenMode<cr>")

-- harpoon keymaps
keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>")
keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
keymap.set("n", "<leader>hz", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
keymap.set("n", "<leader>hx", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
keymap.set("n", "<leader>hc", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
keymap.set("n", "<leader>hv", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")

-- UndoTree keymaps
keymap.set("n", "<leader>ut", "<cmd>UndotreeToggle<cr>")
keymap.set("n", "<leader.uu", "<cmd>UndoTreeFocus<cr>")

keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })
