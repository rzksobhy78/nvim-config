local user = vim.fn.expand('$USER')

-- Update this path
local extension_path = '/home/' .. user .. '/.config/nvim/tools/lldb/extension/'

local opts = {
	dap = {
		adapter = require('rust-tools.dap').get_codelldb_adapter(
		codelldb_path, liblldb_path)
	}
}

require('rust-tools').setup(opts)
require('crates').setup {}
