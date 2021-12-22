local actions = require('telescope.actions')

local function fb_action(f)
	return function (b)
		require('telescope').extensions.file_browser.actions[f](b)
	end
end

local imaps = {
	["<TAB>"] = actions.move_selection_next,
	["<S-TAB>"] = actions.move_selection_previous,
}

require('telescope').setup {
	defaults = {
		mappings = {
			i = imaps,
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
		file_browser = {
			dir_icon = '',
			mappings = {
				i = vim.tbl_extend('force', imaps, {
					["<C-y>"] = fb_action 'copy_file',
					["<C-a>"] = fb_action 'create_file',
					["<C-r>"] = fb_action 'rename_file',
					["<C-d>"] = fb_action 'remove_file',
					["<C-e>"] = fb_action 'goto_parent_dir',
					["<C-b>"] = fb_action 'goto_cwd',
					["<C-t>"] = fb_action 'toggle_browser',
					["<C-h>"] = fb_action 'toggle_hidden',
				}),
			},
		},
		['ui-select'] = {
			require('telescope.themes').get_dropdown {}
		},
	}
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('dap')
require('telescope').load_extension('ui-select')
require('telescope').load_extension('file_browser')
