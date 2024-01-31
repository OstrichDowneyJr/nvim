local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		-- lua
		null_ls.builtins.formatting.stylua,
		-- python
		null_ls.builtins.diagnostics.mypy,
		null_ls.builtins.diagnostics.ruff,
		null_ls.builtins.formatting.isort,
		-- c
		-- null_ls.builtins.formatting.astgrep,
	},
})

vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
