-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "monochrome",
	-- theme = "chocolate",
	-- theme = "material-darker",
	-- theme = "poimandres",
	-- theme = "pastelbeans",
	hl_override = {
		Comment = { italic = false },
		["@comment"] = { italic = false },
	},
}

return M
