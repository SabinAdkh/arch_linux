--> Added code.==============================================================>
return require("packer").startup(function()
	use("wbthomason/packer.nvim") --> packer plugin manager

	-->
	use("kyazdani42/nvim-web-devicons") --> enable icons
	use("norcalli/nvim-colorizer.lua")
	use("nvim-lualine/lualine.nvim") --> a statusline written in lua
	use("romgrk/barbar.nvim") --> tabs for neovim
	use("kyazdani42/nvim-tree.lua") --> file explorer
	use("akinsho/toggleterm.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim") --> Find, Filter, Preview, Pick. All lua, all the time.
	use("numToStr/Comment.nvim")
	use("windwp/nvim-autopairs")
	use("fladson/vim-kitty") --> kitty syntax highlighting

	--> colorschemes
    use 'ellisonleao/gruvbox.nvim'

    --> Neovim statup
   use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.opts)
    end
     }

	--> treesitter & treesitter modules/plugins
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) --> treesitter
	-- use("nvim-treesitter/nvim-treesitter-textobjects") --> textobjects
	use"nvim-treesitter/nvim-treesitter-refactor"
	use"nvim-treesitter/playground"
	use"JoosepAlviste/nvim-ts-context-commentstring"

	--> lsp
	use("neovim/nvim-lspconfig") --> Collection of configurations for built-in LSP client
	use("williamboman/nvim-lsp-installer") --> Companion plugin for lsp-config, allows us to seamlesly install language servers
	use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...
	use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
	use("hrsh7th/nvim-cmp") --> Autocompletion plugin
    use ("hrsh7th/cmp-buffer") -- buffer completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use ("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") --> Snippets source for nvim-cmp

    use 'hrsh7th/nvim-compe' --> added plugin for completion
    use 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'


    use("mhartington/formatter.nvim") --> code formatting

    use {
    's1n7ax/nvim-terminal',
    config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup()
    end,
     }

    --> code snippets
	use("L3MON4D3/LuaSnip") --> Snippets plugin
    use("rafamadriz/friendly-snippets" )-- a bunch of snippets to use

    --> Markdwon preview
    use {
    'iamcco/markdown-preview.nvim',
     ft = 'markdown',
     run = 'cd app && yarn install'
     }

    use('tpope/vim-repeat') --> to repeat commands very good
      -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
