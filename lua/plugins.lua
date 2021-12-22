local use = require('packer').use

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope plugins
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-dap.nvim'
	use 'nvim-telescope/telescope-ui-select.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'nvim-lua/plenary.nvim'

	-- tab line I use bufferline
	use 'akinsho/bufferline.nvim'

	-- lspconfig plugins
	use 'neovim/nvim-lspconfig'
	use 'b0o/SchemaStore.nvim'

	-- rust plugins
	use 'Saecki/crates.nvim'
	use 'simrat39/rust-tools.nvim'

	-- cmp plugins
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'saadparwaiz1/cmp_luasnip'

	-- formatter
	use 'mhartington/formatter.nvim'

	-- snippets
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

	-- debugging
	use 'mfussenegger/nvim-dap'
	use 'rcarriga/nvim-dap-ui'
	use 'theHamsta/nvim-dap-virtual-text'

	-- useful while editing editting
	use 'windwp/nvim-autopairs'
	use 'numToStr/Comment.nvim'

	-- extra plugins
	use 'folke/which-key.nvim'
	use 'karb94/neoscroll.nvim'

	-- appearance and syntax highlighting
	use 'sainnhe/sonokai'
	use 'onsails/lspkind-nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'p00f/nvim-ts-rainbow'
end)
