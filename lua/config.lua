vim.opt.number = true
vim.opt.relativenumber = true
vim.o.cursorline = true

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

vim.opt.updatetime = 250
vim.opt.timeoutlen = 400
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.clipboard = 'unnamedplus'
vim.opt.fillchars = { eob = " ", vert = " " }

-- vim.g.sonokai_style = 'atlantis'
-- vim.g.sonokai_enable_italic = 1
-- vim.g.sonokai_disable_italic_comment = 1
-- vim.api.nvim_command [[ colorscheme sonokai ]]
vim.api.nvim_command [[ colorscheme tokyonight ]]
vim.opt.background = 'dark'
