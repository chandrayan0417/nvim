return {
	"windwp/nvim-ts-autotag",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	event = "InsertEnter",
	config = function()
		require("nvim-ts-autotag").setup({
			enable = true, -- Required: Enables the plugin

			-- Optional: Customize behavior
			enable_close = true,
			enable_rename = true,
			enable_close_on_slash = true,

			filetypes = {
				"html",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"xml",
				"rescript",
				"tsx",
			},

			-- Optional: Override options per filetype
			per_filetype = {
				html = {
					enable_close = false,
				},
			},
		})
	end,
}
