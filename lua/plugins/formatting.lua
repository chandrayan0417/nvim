return {
	-- Autoformat with conform.nvim
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		notify_on_error = true,
		formatters_by_ft = {
			lua = { "stylua" },
			["javascript"] = { "biome-check" },
			["javascriptreact"] = { "biome-check" },
			["typescript"] = { "biome-check" },
			["typescriptreact"] = { "biome-check" },
			["json"] = { "biome-check" },
			["css"] = { "biome-check" },
			-- javascript = { "biome" },
			-- javascriptreact = { "biome" },
			-- typescript = { "biome" },
			-- typescriptreact = { "biome" },
			-- json = { "biome" },
			html = { "prettierd" },
			-- css = { "prettierd" },
			markdown = { "prettierd" },
			yaml = { "prettierd" },
		},
		formatters = {
			biome = {
				command = "biome",
				args = {
					"check",
					"--write",
					"--stdin-file-path",
					"$FILENAME",
				},
				stdin = true,
			},
		},
	},
}
