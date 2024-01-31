require("dapui").setup()
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python3')

local dap = require("dap")
local dapui = require("dapui")

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<Leader>c", dap.continue, {})
vim.keymap.set("n", "<Leader>x", ":DapTerminate<CR>")
vim.keymap.set("n", "<Leader>o", ":DapStepOver<CR>")
