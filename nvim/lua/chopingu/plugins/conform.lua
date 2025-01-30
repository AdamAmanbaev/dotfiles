local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		markdown = { "prettierd", "prettier" },
		latex = { "latexindent", "bibtex-tidy" },
	},
	format_on_save = {
		timeout_ns = 500,
		lsp_fallback = true,
	},
})
