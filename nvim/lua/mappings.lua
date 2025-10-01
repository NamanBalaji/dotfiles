require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- DAP
map("n", "<F5>", function()
    require("dap").continue()
end, { desc = "DAP Continue" })

map("n", "<F10>", function()
    require("dap").step_over()
end, { desc = "DAP Step Over" })

map("n", "<F11>", function()
    require("dap").step_into()
end, { desc = "DAP Step Into" })

map("n", "<F12>", function()
    require("dap").step_out()
end, { desc = "DAP Step Out" })

map("n", "<leader>db", function()
    require("dap").toggle_breakpoint()
end, { desc = "DAP Breakpoint" })

map("n", "<leader>du", function()
    require("dapui").toggle()
end, { desc = "DAP UI" })

-- LSP
map("n", "<leader>ih", function()
    local enabled = vim.lsp.inlay_hint.is_enabled()
    vim.lsp.inlay_hint.enable(not enabled)
end, { desc = "Toggle Inlay Hints" })

-- testing
map("n", "<leader>tn", function()
    require("neotest").run.run()
end, { desc = "Test Nearest" })

map("n", "<leader>tf", function()
    require("neotest").run.run(vim.fn.expand("%"))
end, { desc = "Test File" })

map("n", "<leader>ta", function()
    require("neotest").run.run(vim.fn.getcwd())
end, { desc = "Test All" })

map("n", "<leader>ts", function()
    require("neotest").summary.toggle()
end, { desc = "Test Summary" })

map("n", "<leader>to", function()
    require("neotest").output.open({ enter = true })
end, { desc = "Test Output" })

map("n", "<leader>tO", function()
    require("neotest").output_panel.toggle()
end, { desc = "Test Output Panel" })

map("n", "<leader>td", function()
    require("neotest").run.run({ strategy = "dap" })
end, { desc = "Debug Nearest Test" })

map("n", "<leader>tS", function()
    require("neotest").run.stop()
end, { desc = "Stop Test" })

map("n", "<leader>tw", function()
    require("neotest").watch.toggle(vim.fn.expand("%"))
end, { desc = "Toggle Watch File" })

-- UFO
map("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
map("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
map("n", "zK", function()
    local winid = require("ufo").peekFoldedLinesUnderCursor()
    if not winid then
        vim.lsp.buf.hover()
    end
end, { desc = "Peek fold or hover" })

-- Code actions
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
map("v", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
