require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Harpoon Start
map("n", "<leader>hh", function()
  require("harpoon.ui").toggle_quick_menu()
end, { desc = "Toggle Harpoon quick menu" })

map("n", "<leader>ha", function()
  require("harpoon.mark").add_file()
end, { desc = "Add file to Harpoon" })

map("n", "<leader>hn", function()
  require("harpoon.ui").nav_next() -- navigates to next mark
end, { desc = "Move to next in Harpoon list" })

map("n", "<leader>hp", function()
  require("harpoon.ui").nav_prev() -- navigates to previous mark
end, { desc = "Move to previous in Harpoon list" })
-- Harpoon Start

-- don't put single character in the register
map("n", "x", '"_x')

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
