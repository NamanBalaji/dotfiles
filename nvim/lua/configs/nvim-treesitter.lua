local options = {
    ensure_installed = {
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
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = {
        enable = true,
    },
}

require("nvim-treesitter.configs").setup(options)
