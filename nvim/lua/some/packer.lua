vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- theme
    use 'navarasu/onedark.nvim'
    use 'folke/tokyonight.nvim'
    use 'shaunsingh/nord.nvim'
    use 'morhetz/gruvbox'
    use 'ellisonleao/gruvbox.nvim'

    use 'ryanoasis/vim-devicons'
    use 'preservim/nerdtree'
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }
    -- python
    use 'dense-analysis/ale'
    use {
      "startup-nvim/startup.nvim",
      config = function()
        require"startup".setup()
      end
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},         -- Required
          {'hrsh7th/cmp-nvim-lsp'},     -- Required
          {'hrsh7th/cmp-buffer'},       -- Optional
          {'hrsh7th/cmp-path'},         -- Optional
          {'saadparwaiz1/cmp_luasnip'}, -- Optional
          {'hrsh7th/cmp-nvim-lua'},     -- Optional

          -- Snippets
          {'L3MON4D3/LuaSnip'},             -- Required
          {'rafamadriz/friendly-snippets'}, -- Optional
        }
}
end)
