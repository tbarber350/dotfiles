local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Install your plugins here
require('lazy').setup({
    -- My plugins here
    "nvim-lua/popup.nvim", -- an implementation of the Popup API from vim in Neovim
    "nvim-lua/plenary.nvim", -- useful lua functions us by lots of plugins
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("travis.plugin.colors")
        end
    },
    {
    "windwp/nvim-autopairs", -- autopairs, integrates with both cmp and treesitter
    config = function()
	    require("travis.plugin.autopairs")
    end
    },

    {
        'numToStr/Comment.nvim',
        config = function()
            require('travis.plugin.comment')
        end
     },
    'mattn/emmet-vim',
    'andymass/vim-matchup', -- extend % to more objects
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    'editorconfig/editorconfig-vim',
    'vimwiki/vimwiki',

    'tpope/vim-surround',
    'tpope/vim-repeat',
    'tpope/vim-unimpaired',

    'mbbill/undotree',

    -- git
    'tpope/vim-fugitive',
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('travis.plugin.gitsigns')
        end
    },

    {
        'github/copilot.vim',
        config = function()
            require("travis.plugin.copilot")
        end
    },

    'christoomey/vim-sort-motion', -- sort things with motions
    'godlygeek/tabular', -- line things up
    'leafOfTree/vim-vue-plugin',
    'mustache/vim-mustache-handlebars',
    {
        'code-biscuits/nvim-biscuits',
        config = function()
            require('travis.plugin.biscuits')
        end
    }, -- see opening tag hint at closing tag
    {
        'ThePrimeagen/harpoon',
        config = function()
            require('travis.plugin.harpoon-config')
        end
    }, -- navigate between files

    -- text objects
    'kana/vim-textobj-user',
    {
        'kana/vim-textobj-indent',
        dependencies = {'kana/vim-textobj-user'}
    },
    {
        'kana/vim-textobj-line',
        dependencies = {'kana/vim-textobj-user'}
    },
    {
        'kana/vim-textobj-entire',
        dependencies = {'kana/vim-textobj-user'}
    },
    {
        'kana/vim-textobj-function',
        dependencies = {'kana/vim-textobj-user'}
    },
    {
        'thinca/vim-textobj-function-javascript',
        dependencies = {'kana/vim-textobj-user'}
    },

    'christoomey/vim-tmux-navigator',
    'wellle/tmux-complete.vim', -- complete words in tmux panes <C-x><C-u>

    -- cmp plugins
    {
        'hrsh7th/nvim-cmp',
        config = function()
            require('travis.plugin.cmp')
        end
    },
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-emoji',
    'hrsh7th/cmp-nvim-lua',
    "saadparwaiz1/cmp_luasnip", -- snippet completions

    "L3MON4D3/LuaSnip", --snippet engine
    'rafamadriz/friendly-snippets', -- a bunch of snippets

    -- LSP
      {
        'neovim/nvim-lspconfig',
        dependencies = {
            -- Automatically install LSPs to stdpath for neovim
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- Useful status updates for LSP
            -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
            { 'j-hui/fidget.nvim', opts = {} },

            -- Additional lua configuration, makes nvim stuff amazing!
            'folke/neodev.nvim',
        },
        config = function()
            require('travis.plugin.lsp-mason')
        end
    },
    'glepnir/lspsaga.nvim',
    -- {
    --     'neovim/nvim-lspconfig',
    --     config = function()
    --         require('travis.plugin.lspconfig')
    --     end
    -- }, -- enables LSP
    -- "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {'nvim-lua/plenary.nvim'},
        config = function()
            require('travis.plugin.telescope')
        end
    },
    'nvim-telescope/telescope-fzy-native.nvim',
    "nvim-telescope/telescope-file-browser.nvim",

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate',
        config = function()
            require('travis.plugin.treesitter')
        end
    },
    'nvim-treesitter/playground',

    -- status line
    {
        'hoob3rt/lualine.nvim',
        config = function()
            require('travis.plugin.lualine')
        end
    },
    {
        'kyazdani42/nvim-web-devicons',
        config = function()
            require('travis.plugin.devicons')
        end
    },
})
