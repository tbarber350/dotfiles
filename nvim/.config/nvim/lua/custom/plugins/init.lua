-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"tpope/vim-fugitive",
	},
	{
		"tpope/vim-unimpaired",
	},
	{
		"tpope/vim-surround",
	},
	{
		"mbbill/undotree",
	},
	{
		"editorconfig/editorconfig-vim",
	},
	{
		"folke/ts-comments.nvim",
		opts = {},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	-- text objects
	{
		"kana/vim-textobj-user",
	},
	{
		"kana/vim-textobj-indent",
		dependencies = { "kana/vim-textobj-user" },
	},
	{
		"kana/vim-textobj-line",
		dependencies = { "kana/vim-textobj-user" },
	},
	{
		"kana/vim-textobj-entire",
		dependencies = { "kana/vim-textobj-user" },
	},
	{
		"kana/vim-textobj-function",
		dependencies = { "kana/vim-textobj-user" },
	},
	{
		"thinca/vim-textobj-function-javascript",
		dependencies = { "kana/vim-textobj-user" },
	},
}
