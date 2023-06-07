-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({ "bluz71/vim-moonfly-colors", 
  	as = "moonfly",
	config = function()
			vim.cmd [[colorscheme moonfly]]
	end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  use( 'nvim-treesitter/playground')
  use( 'nvim-lua/plenary.nvim') 
  use( 'ThePrimeagen/harpoon')
  use( 'mbbill/undotree')
  use( 'tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

--  use {'neoclide/coc.nvim', branch = 'release'}
  
  -- Auto completion and snippets
  use ('h`rsh7th/nvim-cmp')
  use ('hrsh7th/cmp-nvim-lsp')
  use ('L3MON4D3/LuaSnip')
  use ('saadparwaiz1/cmp_luasnip')
  use ('rafamadriz/friendly-snippets')
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use ('ianks/vim-tsx')
end)
