local dap, dapui = require("dap"), require("dapui")

dapui.setup()

dap.listeners.after.event_initialized["dapui"] = function()
    dapui.open()
end

dap.listeners.before.event_terminated["dapui"] = function()
    dapui.close()
end

dap.listeners.before.event_exited["dapui"] = function()
    dapui.close()
end

-- C/C++ debugging via codelldb
local mason_path = vim.fn.stdpath("data") .. "/mason"
local codelldb_path = mason_path .. "/bin/codelldb"

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = codelldb_path,
        args = { "--port", "${port}" },
    },
}

dap.configurations.c = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
    },
}
