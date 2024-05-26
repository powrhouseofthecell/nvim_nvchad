require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- don't put single character in the register
map("n", "x", '"_x')

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
