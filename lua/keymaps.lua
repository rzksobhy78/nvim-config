local set_keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

set_keymap('n', '<SPACE>', ':WhichKey <leader><CR>', opts)

-- better escape
set_keymap('i', '<C-c>', '<ESC>', opts)
set_keymap('v', '<C-c>', '<ESC>', opts)
set_keymap('t', '<C-c>', '<C-\\><C-n>', opts)
set_keymap('n', '<C-z>', '<NOP>', {})

-- better window navigation
set_keymap('n', '<C-h>', '<C-w>h', opts)
set_keymap('n', '<C-j>', '<C-w>j', opts)
set_keymap('n', '<C-k>', '<C-w>k', opts)
set_keymap('n', '<C-l>', '<C-w>l', opts)

-- search current buffer
set_keymap('n', '?', ':nohl<CR>', opts)
set_keymap('n', '<C-_>', ':Telescope current_buffer_fuzzy_find theme=ivy<CR>', opts)

-- btter tabbing
vim.api.nvim_command [[
	vnoremap < <gv
	vnoremap > >gv
]]

-- dap keymaps
set_keymap('n', '<F4>', ':lua require("lang.custom").start_dap()<CR>', opts)
set_keymap('n', '<F3>', ':lua require("lang.custom").close_dap()<CR>', opts)
set_keymap('n', '<F5>', ':lua require("dap").continue()<CR>', opts)
set_keymap('n', '<F9>', ':lua require("dap").toggle_breakpoint()<CR>', opts)
set_keymap('n', '<F10>', ':lua require("dap").step_over()<CR>', opts)
set_keymap('n', '<F11>', ':lua require("dap").step_into()<CR>', opts)
set_keymap('n', '<F12>', ':lua require("dap").step_out()<CR>', opts)

local leader_opts = {
	mode = "n",
	prefix = "<leader>",
	buffer = nil,
	silent = true,
	noremap = true,
	nowait = true,
}

require('which-key').register({
	t = { ':lua require("nav.custom").browse_from_buffer()<CR>', 'File Browser' },
	f = {
		name = 'Telescope',
		f = { ':lua require("nav.custom").search_src()<CR>', '< SRC >' },
		a = { ':lua require("telescope.builtin").find_files()<CR>', 'All Files' },
		t = { ':lua require("telescope.builtin").treesitter()<CR>', 'treesitter' },
		b = { ':lua require("telescope.builtin").buffers()<CR>', 'buffers' },
		c = {
			name = 'Configurations',
			f = { ':lua require("nav.custom").search_config()<CR>', '< CONFIG >' },
			k = { ':lua require("telescope.builtin").keymaps()<CR>', 'keymaps' },
			h = { ':lua require("telescope.builtin").help_tags()<CR>', 'help_tags' },
			t = { ':lua require("telescope.builtin").colorscheme()<CR>', 'colorscheme' },
		}
	},
	e = { ':NvimTreeToggle<CR>', 'File Explorer' },
	d = {
		name = 'dap',
		t = { ':lua require("dap").toggle_breakpoint()<CR>', 'toggle_breakpoint' },
		d = { ':lua require("lang.custom").start_dap()<CR>', 'start' },
		x = { ':lua require("lang.custom").close_dap()<CR>', 'close' },
		n = { ':lua require("dap").continue()<CR>', 'continue' },
		j = { ':lua require("dap").step_over()<CR>', 'step_over' },
		l = { ':lua require("dap").step_into()<CR>', 'step_into' },
		h = { ':lua require("dap").step_out()<CR>', 'step_out' },
		v = { ':lua require("telescope").extensions.dap.variables {}<CR>', 'variables'},
		b = { ':lua require("telescope").extensions.dap.list_breakpoints {}<CR>', 'breakpoints' },
		c = { ':lua require("telescope").extensions.dap.commands {}', 'commands' }
	},
	r = {
		name = 'rust-tools',
		c = { ':lua require("rust-tools.open_cargo_toml").open_cargo_toml()<CR>', 'Cargo' },
		r = { ':lua require("rust-tools.runnables").runnables()<CR>', 'Runnables' },
		d = { ':lua require("lang.custom").start_dap()<CR>', 'start' },
		h = { ':lua require("rust-tools.inlay_hints").toggle_inlay_hints()<CR>', 'inlay_hints' }
	},
}, leader_opts)

set_keymap('n', '<leader>fg', ':Telescope live_grep search=', { noremap = true })
