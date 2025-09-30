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

-- Go helpers (ray-x/go.nvim)
map("n", "<leader>tt", "<cmd>GoTest<CR>", { desc = "Go Test pkg" })
map("n", "<leader>tf", "<cmd>GoTestFunc<CR>", { desc = "Go Test func" })

-- UFO
map("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
map("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
map("n", "zK", function()
    local winid = require("ufo").peekFoldedLinesUnderCursor()
    if not winid then
        vim.lsp.buf.hover()
    end
end, { desc = "Peek fold or hover" })
-- map("n", "za", require("ufo").t)
