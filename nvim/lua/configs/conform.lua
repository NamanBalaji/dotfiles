local options = {
    formatters_by_ft = {
        go = { "gofumpt", "goimports" },
        lua = { "stylua" },
        rust = { "rustfmt" },

        markdown = { "prettierd", "prettier", stop_after_first = true },
        proto = { "buf", "clang-format", stop_after_first = true },
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },

    formatters = {
        buf = {
            inherit = false,
            command = "buf",
            args = { "format", "-" },
            stdin = true,
        },
    },
}

return options
