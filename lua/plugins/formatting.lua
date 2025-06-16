return {
	-- Autoformat with conform.nvim
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		notify_on_error = false,
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "biome" },
			javascriptreact = { "biome" },
			typescript = { "biome" },
			typescriptreact = { "biome" },
			json = { "biome" },
			html = { "prettierd" },
			css = { "prettierd" },
			markdown = { "prettierd" },
			yaml = { "prettierd" },
		},
		formatters = {
			biome = {
				command = "biome",
				args = {
					"check",
					"--apply",
					"--stdin-file-path",
					"$FILENAME",
				},
				stdin = true,
			},
		},
	},
}
