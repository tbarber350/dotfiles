return {
    -- My plugins here
    {
        "nvim-lua/popup.nvim", -- an implementation of the Popup API from vim in Neovim
    },
    {
        "nvim-lua/plenary.nvim", -- useful lua functions us by lots of plugins
    },
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    {
        'mattn/emmet-vim',
    },
    {
        'andymass/vim-matchup', -- extend % to more objects
    },
    {
        'editorconfig/editorconfig-vim',
    },
    {
        'vimwiki/vimwiki',
    },
    {
        'tpope/vim-surround',
    },
    {
        'tpope/vim-repeat',
    },
    {
        'tpope/vim-unimpaired',
    },
    {
        'mbbill/undotree',
    },
    -- git
    {
        'tpope/vim-fugitive',
    },


    {
        'christoomey/vim-sort-motion', -- sort things with motions
    },
    {
        'godlygeek/tabular', -- line things up
    },
    {
        'mustache/vim-mustache-handlebars',
    },
    -- text objects
    {
        'kana/vim-textobj-user',
    },
    {
        'kana/vim-textobj-indent',
        dependencies = { 'kana/vim-textobj-user' }
    },
    {
        'kana/vim-textobj-line',
        dependencies = { 'kana/vim-textobj-user' }
    },
    {
        'kana/vim-textobj-entire',
        dependencies = { 'kana/vim-textobj-user' }
    },
    {
        'kana/vim-textobj-function',
        dependencies = { 'kana/vim-textobj-user' }
    },
    {
        'thinca/vim-textobj-function-javascript',
        dependencies = { 'kana/vim-textobj-user' }
    },

    {
        'christoomey/vim-tmux-navigator',
    },
    {
        'wellle/tmux-complete.vim', -- complete words in tmux panes <C-x><C-u>
    },
    {
        "L3MON4D3/LuaSnip", --snippet engine
    },
    {
        'rafamadriz/friendly-snippets', -- a bunch of snippets
    },
    {
        'glepnir/lspsaga.nvim',
    },
}
