return {
	"windwp/nvim-ts-autotag",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("nvim-ts-autotag").setup({
			enable_rename = true,
			enable_close = true,
			enable_close_on_slash = true,
			filetypes = {
				"html",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"xml",
			},
		})
	end,
	event = "InsertEnter",
}
