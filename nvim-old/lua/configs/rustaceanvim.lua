return {
    setup = function()
        vim.g.rustaceanvim = {
            server = {
                default_settings = {
                    ["rust-analyzer"] = {
                        cargo = { allFeatures = true },
                        checkOnSave = true,
                        check = { command = "clippy" },
                        inlayHints = { enable = true },
                    },
                },
            },
            dap = {},
        }
    end,
}
