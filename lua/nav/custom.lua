local M = {}

function M.search_src()
	require('telescope.builtin').find_files({
		prompt_title = '< SRC >',
		cwd = vim.fn.getcwd() .. '/src'
	})
end

function M.search_config()
	require('telescope.builtin').find_files({
		cwd = '~/.config/nvim',
		prompt_title = '< CONFIG >',
	})
end

function M.browse_from_buffer()
	require('telescope').extensions.file_browser.file_browser({
		path = vim.fn.expand('%:p:h'),
	})
end

return M
