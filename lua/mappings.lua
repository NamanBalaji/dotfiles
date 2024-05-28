require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


map({ "n", "v", "i" }, "<C-a>", "<Esc>ggVG", { desc = "Select all" })

-- Move lines up/down
map("n", "<A-Down>", ":m .+1<CR>", { desc = "Move line down with <A-Down> in normal mode" })
map("n", "<A-Up>", ":m .-2<CR>", { desc = "Move line up with <A-Down> in normal mode" })
map("n", "<A-j>", ":m .+1<CR>", { desc = "Move line down with <A-j> in normal mode" })
map("n", "<A-k>", ":m .-2<CR>", { desc = "Move line up with <A-k> in normal mode" })
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down with <A-Down> in insert mode" })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down with <A-j> in insert mode" })
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up with <A-Up> in insert mode" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up with <A-k> in insert mode" })
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move line down with <A-Down> in visual mode" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down with <A-j> in visual mode" })
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move line up with <A-Up> in visual mode" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up with <A-k> in visual mode" })

-- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
map("n", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map("n", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
map("n", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
map("n", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })

map("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
map("n", "<leader>dc", ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
map("n", "<leader>di", ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
map("n", "<leader>do", ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
map("n", "<leader>dO", ":lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
map("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", { noremap = true, silent = true })
map("n", "<leader>dl", ":lua require'dap'.run_last()<CR>", { noremap = true, silent = true })
map("n", "<leader>du", ":lua require'dapui'.toggle()<CR>", { noremap = true, silent = true })

-- Telescope keymaps
local builtin = require("telescope.builtin")

map("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
map("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })
map("n", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true, silent = true })
map("n", "<C-p>", ":lua require'telescope'.extensions.project.project{}<CR>", { noremap = true, silent = true })

map("n", "gd", builtin.lsp_definitions, { noremap = true, silent = true, desc = "Goto Definiton" })
map("n", "gi", builtin.lsp_implementations, { noremap = true, silent = true, desc = "Goto Implementation" })
map("n", "gr", builtin.lsp_references, { noremap = true, silent = true, desc = "Goto References" })
map("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true, desc = "" })
map("n", "<C-k>", vim.lsp.buf.signature_help, { noremap = true, silent = true, desc = "Signature Help" })
