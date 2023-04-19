local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    _ = vim.cmd [[
        packadd packer.nvim
    ]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
_ = vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    }
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" -- have packer manage itself
    use "nvim-lua/popup.nvim" -- an implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- useful lua functions us by lots of plugins
    use "EdenEast/nightfox.nvim"
    use "windwp/nvim-autopairs" -- autopairs, integrates with both cmp and treesitter

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
     }

    use {
    "danymat/neogen",
    config = function()
        require('neogen').setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
    }

    use 'mattn/emmet-vim'
    use 'andymass/vim-matchup' -- extend % to more objects
    use 'lukas-reineke/indent-blankline.nvim' -- indentation guide lines
    use 'editorconfig/editorconfig-vim'
    use 'vimwiki/vimwiki'

    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-unimpaired'

    use 'mbbill/undotree'

    -- git
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    use 'github/copilot.vim'

    use 'christoomey/vim-sort-motion' -- sort things with motions
    use 'godlygeek/tabular' -- line things up
    use 'leafOfTree/vim-vue-plugin'
    use 'mustache/vim-mustache-handlebars'
    use 'code-biscuits/nvim-biscuits' -- see opening tag hint at closing tag
    use 'ThePrimeagen/harpoon' -- navigate between files

    -- text objects
    use 'kana/vim-textobj-user'
    use 'kana/vim-textobj-indent'
    use 'kana/vim-textobj-line'
    use 'kana/vim-textobj-entire'
    use 'kana/vim-textobj-function'
    use 'thinca/vim-textobj-function-javascript'
    use 'josuecau/vim-textobj-cssprop'

    use 'christoomey/vim-tmux-navigator'
    use 'wellle/tmux-complete.vim' -- complete words in tmux panes <C-x><C-u>

    -- cmp plugins
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-emoji'
    use 'hrsh7th/cmp-nvim-lua'
    use "saadparwaiz1/cmp_luasnip" -- snippet completions

    use "L3MON4D3/LuaSnip" --snippet engine
    use 'rafamadriz/friendly-snippets' -- a bunch of snippets

    -- LSP
    use 'neovim/nvim-lspconfig' -- enables LSP
    use 'williamboman/nvim-lsp-installer'
    use 'glepnir/lspsaga.nvim'
    -- use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use { "nvim-telescope/telescope-file-browser.nvim" }

    -- Treesitter
    use {
     'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate'
    }

    use { -- additional text objects via treesitter
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter',
    }
    use 'nvim-treesitter/playground'

    -- status line
    use 'hoob3rt/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'

    -- Automatically set up your configuration after cloning  packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
