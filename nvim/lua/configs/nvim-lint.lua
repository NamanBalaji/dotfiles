local lint = require("lint")

lint.linters_by_ft = {
    lua = { "luacheck" },
    go = { "golangcilint" },

    dockerfile = { "hadolint" },
    make = { "checkmake" },
    markdown = { "markdownlint" },
    proto = { "buf_lint" }, -- custom defined below
}

lint.linters.luacheck.args = {
    "--globals",
    "vim",
    "--formatter",
    "plain",
    "--code",
    "--ranges",
    "-",
}

lint.linters.buf_lint = {
    cmd = "buf",
    stdin = false,
    args = { "lint", "--path", "$FILENAME" },
    stream = "stderr",
    parser = require("lint.parser").from_errorformat("%f:%l:%c: %t%*[^:]: %m", { source = "buf" }),
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    callback = function()
        lint.try_lint()
    end,
})
