local set_keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

set_keymap('n', '<TAB>', ':BufferNext<CR>', opts)
set_keymap('n', '<S-TAB>', ':BufferPrevious<CR>', opts)
set_keymap('n', '<C-w>', ':BufferWipeout<CR>', opts)

vim.cmd [[
	nnoremap <silent> > :BufferMoveNext<CR>
	nnoremap <silent> < :BufferMovePrevious<CR>
]]
