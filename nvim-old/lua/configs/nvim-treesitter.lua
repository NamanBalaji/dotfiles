require("nvim-treesitter").setup()

local ensure_installed = {
    -- vim
    "vim",
    "vimdoc",

    -- lua
    "lua",
    "luadoc",

    -- go
    "go",
    "gomod",
    "gowork",

    "rust",

    -- other
    "yaml",
    "toml",
    "bash",
    "markdown",
    "printf",

    "dockerfile",
    "proto",
    "make",
    "markdown_inline",
}

require("nvim-treesitter").install(ensure_installed)
