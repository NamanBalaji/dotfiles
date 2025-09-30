require("nvchad.configs.lspconfig").defaults()

local nvlsp = require("nvchad.configs.lspconfig")
local on_attach = nvlsp.on_attach
local on_init = nvlsp.on_init
local capabilities = nvlsp.capabilities

local servers = {
    html = { on_attach = on_attach, on_init = on_init, capabilities = capabilities },
    cssls = { on_attach = on_attach, on_init = on_init, capabilities = capabilities },

    dockerls = { on_attach = on_attach, on_init = on_init, capabilities = capabilities },
    marksman = { on_attach = on_attach, on_init = on_init, capabilities = capabilities },

    gopls = {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        settings = {
            gopls = {
                usePlaceholders = true,
                completeUnimported = true, -- auto-imports
                gofumpt = true,
                staticcheck = true,
                analyses = {
                    unusedparams = true,
                    nilness = true,
                    unusedwrite = true,
                    shadow = true,
                },
                hints = {
                    assignVariableTypes = true,
                    compositeLiteralFields = true,
                    compositeLiteralTypes = true,
                    constantValues = true,
                    functionTypeParameters = true,
                    parameterNames = true,
                    rangeVariableTypes = true,
                },
            },
        },
    },
}

for name, opts in pairs(servers) do
    vim.lsp.config(name, opts)
end
vim.lsp.enable(vim.tbl_keys(servers))
