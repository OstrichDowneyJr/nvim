return {
	require("lazy").setup({
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
		"goolord/alpha-nvim",
		"nvim-lualine/lualine.nvim",
		"nvim-treesitter/nvim-treesitter",
		{
			"nvim-tree/nvim-tree.lua",

			-- dependencies for nvim-tree
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons",
				"MunifTanjim/nui.nvim",
			},
		},
		"simrat39/rust-tools.nvim",
		-- debbuging
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap-python",
		-- commments
		"numToStr/Comment.nvim",
		-- completion
		"nvimtools/none-ls.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		{
			"vinnymeller/swagger-preview.nvim",
			run = "npm install -g swagger-ui-watcher",
		},
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.4",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
		{
			"folke/noice.nvim",
			dependencies = {
				"MunifTanjim/nui.nvim",
				"rcarriga/nvim-notify",
			},
		},
		-- battery status on lualine
		"justinhj/battery.nvim",

		-- terminal
		"rebelot/terminal.nvim",
		-- git integration
		"lewis6991/gitsigns.nvim",
		"tpope/vim-fugitive",
		{
			"romgrk/barbar.nvim",
			dependencies = {
				"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
				"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
			},
		},

	}),
}
