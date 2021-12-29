local set_keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require("bufferline").setup{
	options = {
		close_command = 'bwipeout! %d',
		diagnostics = 'nvim_lsp',
		show_close_icon = false,
		offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left" }},
	},
}

set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)

set_keymap('n', '<C-w>', ':Bdelete<CR>', opts)
