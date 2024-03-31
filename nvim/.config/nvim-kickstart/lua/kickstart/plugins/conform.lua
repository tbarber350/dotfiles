return {
	{ -- Autoformat
		"stevearc/conform.nvim",
		keys = {
			{
				-- Customize or remove this keymap to your liking
				"<leader>f",
				function()
					print("running conform format")
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				-- Disable "format_on_save lsp_fallback" for languages that don't
				-- have a well standardized coding style. You can add additional
				-- languages here or re-enable it for the disabled ones.
				local disable_filetypes = { c = true, cpp = true }
				return {
					timeout_ms = 500,
					lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
				}
			end,
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform can also run multiple formatters sequentially
				-- python = { "isort", "black" },
				--
				-- You can use a sub-list to tell conform to run *until* a formatter
				-- is found.
				typescript = { { "prettierd", "prettier", "eslint_d" } },
				typescriptreact = { { "prettierd", "prettier", "eslint_d" } },
				javascript = { { "prettierd", "prettier", "eslint_d" } },
				javascriptreact = { { "prettierd", "prettier", "eslint_d" } },
				json = { { "prettierd", "prettier", "eslint_d" } },
				html = { { "prettierd", "prettier", "eslint_d" } },
				css = { { "prettierd", "prettier", "eslint_d" } },
			},
			-- Additional configuration for ESLint
			eslint_args = function(file)
				return { "--fix", file }
			end,
		},
	},
}
-- vim: ts=2 sts=2 sw=2 et
