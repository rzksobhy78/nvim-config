vim.opt.number = true
vim.opt.relativenumber = true

local tab_width = 4
vim.opt.tabstop = tab_width
vim.opt.softtabstop = tab_width
vim.opt.shiftwidth = tab_width
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true

vim.opt.mouse = 'a'
vim.opt.cursorline = true

vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = 'number'
vim.opt.fillchars = { eob = " ", vert = " " }
vim.api.nvim_command [[ set iskeyword +=- ]]

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

vim.opt.updatetime = 250
vim.opt.timeoutlen = 400
vim.opt.showmode = false
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.clipboard = 'unnamedplus'

vim.opt.background = 'dark'
vim.opt.termguicolors = true
vim.api.nvim_command [[ colorscheme tokyonight ]]
