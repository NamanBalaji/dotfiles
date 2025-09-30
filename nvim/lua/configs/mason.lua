return {
    ensure_installed = {
        -- lsp
        "gopls", -- go
        "dockerls", -- docker
        "marksman", -- markdown
        "taplo", -- toml

        -- formatters

        "goimports", -- go
        "gofumpt",
        "gomodifytags",

        "prettierd", -- markdown
        "prettier", -- markdown fallback chain
        "clang-format", -- proto fallback if buf unavaialable
        "buf", -- proto formatter/linter CLI

        -- linters
        "golangci-lint", -- go
        "hadolint", -- Dockerfile
        "markdownlint", -- Markdown
        "checkmake", -- Makefile

        -- debug
        "delve",
        "codelldb",
    },
}
