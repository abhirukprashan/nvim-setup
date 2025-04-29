
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
   'cpea2506/one_monokai.nvim',
   as = 'one_monokai',
   config = function()
     vim.cmd('colorscheme one_monokai')
   end
 })
  use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
    -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({})
    end
})
  use 'mbbill/undotree'
 ---
 --use({
 -- 'nobbmaestro/nvim-andromeda',
 -- as = 'andromeda',
 -- requires = { 'tjdevries/colorbuddy.nvim', branch = "dev" },
  --config = function ()
    --vim.cmd('colorscheme andromeda')
  --end
--})

--
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'

  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ({
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end
  })
  use('onsails/lspkind-nvim')
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

use ({
   "nvim-neo-tree/neo-tree.nvim",
   branch = "v3.x",
   requires = {
     "nvim-lua/plenary.nvim",
     "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
     "MunifTanjim/nui.nvim",
     -- Optional image support in preview window: See `# Preview Mode` for more information
   }

  })
 end)
