-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tomorrow_night",
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },
  hl_add = {},
  nvdash = {
    load_on_startup = true,
  },
}

return M

