vim.wo.number = true
vim.wo.relativenumber = true

local tab_width = 4
vim.opt.tabstop = tab_width
vim.opt.softtabstop = tab_width
vim.opt.shiftwidth = tab_width
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true

vim.opt.mouse = 'a'
vim.opt.wrap = false
vim.opt.ruler = true
vim.opt.showmode = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = 'number'
vim.api.nvim_command [[ set iskeyword +=- ]]

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 300
vim.opt.timeoutlen = 0
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.api.nvim_command [[
	set clipboard+=unnamedplus
]]

vim.g.sonokai_style = 'atlantis'
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_disable_italic_comment = 1
vim.api.nvim_command [[ colorscheme sonokai ]]
vim.opt.background = 'dark'
