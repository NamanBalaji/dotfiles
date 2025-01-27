return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "▏",
    },
    scope = {
      show_start = false,
      show_end = false,
      show_exact_scope = false,
    },
    exclude = {
      filetypes = {
        "help",
        "startify",
        "dashboard",
        "packer",
        "neogitstatus",
        "NvimTree",
        "Trouble",
      },
    },
  },
  config = function(_, opts)
    -- Define the IblScope highlight group
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#E5C07B" }) -- You can customize the color as needed

    -- Set up the plugin with the provided options
    require("ibl").setup(opts)
  end,
}
