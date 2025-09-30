return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.nvim-treesitter")
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = function()
            return require("configs.mason")
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = function()
            return require("configs.nvim-tree")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },

    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = require("configs.conform"),
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.nvim-lint")
        end,
    },

    -- DAP + UI
    {
        "mfussenegger/nvim-dap",
    },

    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
            require("configs.nvim-dap-ui")
        end,
    },

    -- go
    {
        "ray-x/go.nvim",
        ft = { "go", "gomod", "gowork", "gotmpl" },
        dependencies = { "ray-x/guihua.lua" },
        opts = {
            lsp_cfg = false,
            trouble = false,
            test_runner = "dlv", -- Use delve for debugging, not testing
            dap_debug = true,
            dap_debug_keymap = false, -- Don't override our DAP keymaps
        },
        config = function(_, opts)
            require("go").setup(opts)
        end,
    },
    {
        "leoluz/nvim-dap-go",
        ft = { "go" },
        dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            require("dap-go").setup()
        end,
    },

    {
        "mrcjkb/rustaceanvim",
        version = "^6",
        dependencies = { "nvim-lua/plenary.nvim", "mfussenegger/nvim-dap" },
        ft = { "rust" },
        init = function()
            require("configs.rustaceanvim").setup()
        end,
    },

    -- Crates support + completion for Cargo.toml
    {
        "Saecki/crates.nvim",
        ft = { "toml" },
        config = function()
            require("crates").setup()
        end,
    },

    {
        "kevinhwang91/nvim-ufo",
        dependencies = { "kevinhwang91/promise-async" },
        event = "BufReadPost",
        opts = {
            provider_selector = function(bufnr, filetype, buftype)
                return { "treesitter", "indent" }
            end,
        },
        config = function(_, opts)
            require("ufo").setup(opts)
        end,
    },
}
