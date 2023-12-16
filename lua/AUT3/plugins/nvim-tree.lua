return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")
		vim.g.loaded = 1
		vim.g.loaded_netrwPlugin = 1

		vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

		nvimtree.setup({
			view = { width = 30, },
		})

		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>") -- toggle file explorer
	end
}
