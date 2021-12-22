local M = {}

function M.start_dap()
	require('dapui').open()
	if vim.fn.expand('%:e') == 'rs' then
		require("rust-tools.debuggables").debuggables()
	else
		require("dap").continue()
	end
end

function M.close_dap()
	require("dap").close()
	require("dapui").close()
	vim.api.nvim_command [[
		bdelete! \[dap-repl]
		bdelete! term
	]]
end

return M
