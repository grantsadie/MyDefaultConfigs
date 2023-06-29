local ok, dap = pcall(require, 'dap')
if not ok then
  print("Dap plugin is not available.")
  return
end

-- Set the path to the C++ debugger executable
dap.adapters.cppdbg = {
  type = 'executable',
  command = '/usr/bin/gdb', -- Replace with the actual path
  name = 'cppdbg'
}

-- Set the debugger configuration
dap.configurations.cpp = {
  {
    name = "Launch",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    -- cwd = '${workspaceFolder}/linux_build_debug',
    cwd = '/mnt/LinuxExtra/mydev/GlacierEngineGame/linux_build_debug',
    stopOnEntry = false,
    -- miDebuggerPath = '/usr/bin/gdb',
  },
}

-- Key mappings to start and stop the debugger
vim.api.nvim_set_keymap('n', '<F5>', '<Cmd>lua require"dap".continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', '<Cmd>lua require"dap".step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F11>', '<Cmd>lua require"dap".step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', '<Cmd>lua require"dap".step_out()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>b', '<Cmd>lua require"dap".toggle_breakpoint()<CR>', { noremap = true, silent = true })


-- Optional UI configuration (requires nvim-dap-ui plugin)
require('dapui').setup()
