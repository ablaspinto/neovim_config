return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.ast_grep,
				null_ls.builtins.formatting.ast_grep,
			},
		})
		vim.keymap.set("n", "<leader>ds", vim.lsp.buf.format, {})
	end,
}
