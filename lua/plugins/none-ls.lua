return {
	"nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim", -- for fixing the eslint_d issue
  },
	config = function()
		local null_ls = require("null-ls")


    null_ls.setup({
    sources = {
      --  Formatters
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.dart_format,

      -- Dianostics
      require("none-ls.diagnostics.eslint_d")
    },
})
		-- Optional keymap
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}


-- you need to install those package inside :Mason first in order this to work
