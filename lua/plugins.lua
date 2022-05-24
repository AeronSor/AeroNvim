-- Plugins
require('packer').startup(function()
    use 'wbthomason/packer.nvim'  -- Packages Manager
    use {'nvim-telescope/telescope.nvim', requires= 'nvim-lua/plenary.nvim'}  -- Fuzzy finder
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
    use 'feline-nvim/feline.nvim' -- Bufferline
    use 'lukas-reineke/indent-blankline.nvim'
    use 'kyazdani42/nvim-tree.lua'  --Handy tree
    use 'norcalli/nvim-colorizer.lua' --Fast and minimal colorizer
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}  --Mostly for syntax
    use 'lewis6991/gitsigns.nvim' -- Git is always good :)
    --use 'ellisonleao/glow.nvim'


    -- LSP engine
    use 'neovim/nvim-lspconfig'     -- Common configs for built in LSP client


    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'  -- luasnip Completion source for nvim-cmp


    -- Completion
    use 'hrsh7th/nvim-cmp'          -- Autocompletion engine
    use 'hrsh7th/cmp-buffer'        -- Completes words from current buffer
    use 'hrsh7th/cmp-path'          -- Completes file paths
    use 'hrsh7th/cmp-nvim-lua'      -- Lua API support for nvim
    use 'hrsh7th/cmp-nvim-lsp'      -- LSP support in cmp
    use 'onsails/lspkind.nvim'      -- Vscode-like pictrograms and formatting


    -- Colorscheme
    use 'AlessandroYorba/Alduin'
end)
