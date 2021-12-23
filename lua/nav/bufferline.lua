local set_keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require("bufferline").setup{
	options = {
		diagnostics = 'nvim_lsp',
		show_close_icon = false,
		offsets = {{filetype = "NvimTree", text = "File Explorer" }},
	},
}

set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)

set_keymap('n', '<C-w>', ':bdelete<CR>', opts)
