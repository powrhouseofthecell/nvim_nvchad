require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Unmap the Toggle terminal with <leader>h as it was causing issues with harpoon
vim.cmd('unmap <leader>h')

-- General Mappings
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
  require("harpoon.ui").nav_next()
end, { desc = "Move to next in Harpoon list" })

map("n", "<leader>hp", function()
  require("harpoon.ui").nav_prev()
end, { desc = "Move to previous in Harpoon list" })

map("n", "<leader>hc", function()
 require("harpoon.mark").clear_all()
end, { desc = "Clear all marks in Harpoon" })

map("n", "<leader>ht", function()
  require("telescope").extensions.harpoon.marks()
end, { desc = "Show marks in Telescope" })
-- Harpoon End

-- Don't put single character in the register
map("n", "x", '"_x')

-- Uncomment the following line if you want to map <C-s> to save
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Resize Buffers Start
map("n", "<leader>l", "<cmd> SmartResizeRight <cr>")
map("n", "<leader>h", "<cmd> SmartResizeLeft <cr>")
map("n", "<leader>k", "<cmd> SmartResizeUp <cr>")
map("n", "<leader>j", "<cmd> SmartResizeDown <cr>")
-- Resize Buffers Start

-- Maximizer Start
map("n", "<leader>mx", function()
  require('maximize').toggle()
end, { desc = "Toggle Maximize" })
-- Maximizer End
