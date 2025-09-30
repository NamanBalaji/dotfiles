-- lua/configs/rustaceanvim.lua
return {
    setup = function()
        local mason = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/"
        local codelldb_path = mason .. "adapter/codelldb"
        local liblldb_path = mason .. "lldb/lib/liblldb.dylib" -- macOS

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
            dap = {
                -- autoload_configurations = false,
                -- adapter = require("rustaceanvim.config").get_codelldb_adapter(codelldb_path, liblldb_path),
            },
        }
    end,
}
