local lspkind = require('lspkind')
local cmp = require('cmp')

cmp.setup {
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-e>'] = cmp.mapping.close(),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		},
		['<Tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end,
		['<S-Tab>'] = function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end,
	},

	sources = {
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "luasnip" },
		{ name = "cmdline" },
		{ name = "buffer", keyword_length = 5 },
		{ name = "crates" },
	},

	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},

	formatting = {
		format = lspkind.cmp_format {
			with_text = true,
			menu = {
				nvim_lsp = "[LSP]",
				buffer = "[buf]",
				path = "[path]",
				luasnip = "[snip]",
				cmdline = "[cmd]",
				crates = "[CRT]"
			}
		},
	},

	experimental = {
		native_menu = false,
		ghost_text = true,
	},
}

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))


-- add a lisp filetype (wrap my-function), FYI: Hardcoded = { "clojure", "clojurescript", "fennel", "janet" }
cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"
