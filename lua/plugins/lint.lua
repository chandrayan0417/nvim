return {
	{
		"mfussenegger/nvim-lint",
		config = function()
			local lint = require("lint")

			lint.linters_by_ft = {
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				javascriptreact = { "eslint_d" },
				typescriptreact = { "eslint_d" },
			}

			-- Auto lint only if an ESLint config is found
			vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
				callback = function()
					local buf_ft = vim.bo.filetype
					local eslint_filetypes = {
						javascript = true,
						typescript = true,
						javascriptreact = true,
						typescriptreact = true,
					}

					if not eslint_filetypes[buf_ft] then
						return
					end

					-- Check for eslint config in project root
					local config_files = {
						".eslintrc.js",
						".eslintrc.cjs",
						".eslintrc.json",
						".eslintrc.yaml",
						".eslintrc.yml",
						".eslintrc",
						"package.json",
					}

					local found = false
					for _, filename in ipairs(config_files) do
						if vim.fn.filereadable(vim.fn.getcwd() .. "/" .. filename) == 1 then
							found = true
							break
						end
					end

					if found then
						lint.try_lint()
					end
				end,
			})
		end,
	},
}
