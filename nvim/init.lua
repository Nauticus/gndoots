require('core.opts')

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use { "catppuccin/nvim", as = "catppuccin" }
	use "tpope/vim-fugitive"
	use {
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		requires = {
			"nvim-treesitter/nvim-treesitter-refactor",
			"nvim-treesitter/nvim-treesitter-textobjects",
			"nvim-treesitter/playground"
		},
	}
	use {
		"windwp/nvim-autopairs",
		disable = false,
	}
	use 'tpope/vim-surround'
	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
	}
	use {
		'neovim/nvim-lspconfig',
		requires = { 'williamboman/nvim-lsp-installer' },
	}
	use {
		'folke/lua-dev.nvim'
	}
	use {
		"folke/which-key.nvim",
	}
	use { 'tpope/vim-unimpaired' }
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"L3MON4D3/LuaSnip",
			"hrsh7th/cmp-nvim-lsp-signature-help",
		},
	}
	use {
		"tamago324/lir.nvim",
		disable = false,
		requires = {
			"nvim-lua/plenary.nvim",
			-- "tamago324/lir-git-status.nvim",
			"kyazdani42/nvim-web-devicons",
		},
	}
	use {
		'numToStr/Comment.nvim',
	}
end)
