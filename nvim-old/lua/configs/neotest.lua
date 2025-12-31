local neotest = require("neotest")

neotest.setup({
    adapters = {
        require("neotest-golang")({
            testify_enabled = true,
            runner = "gotestsum",
            dap_go_enabled = false,
        }),
        require("rustaceanvim.neotest"),
    },
    discovery = { enabled = true },
    diagnostic = {
        enabled = true,
        severity = vim.diagnostic.severity.ERROR,
    },
    summary = {
        enabled = true,
        animated = true,
        follow = true,
        expand_errors = true,
    },
    output = {
        enabled = true,
        open_on_run = false, -- Don't auto-open, we'll toggle manually
    },
    status = {
        enabled = true,
        virtual_text = true,
        signs = true,
    },
})
