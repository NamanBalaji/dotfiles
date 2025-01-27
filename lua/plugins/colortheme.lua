return {
  "rose-pine/neovim",
  lazy = false,
  priority = 1000,
  name = "rose-pine",
  config = function()
    require("rose-pine").setup {
      disable_background = true,
    }
    local function set_transparency(enable)
      if enable then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
      else
        -- Revert to default background
        vim.cmd "colorscheme rose-pine-moon"
      end
    end

    -- Set initial transparency
    set_transparency(true)
  end,
}
