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

function M.current_buffer_fzf()
	require('telescope.builtin').current_buffer_fuzzy_find({
		sorting_strategy = 'ascending',
		prompt_position = "top"
	})
end

return M
