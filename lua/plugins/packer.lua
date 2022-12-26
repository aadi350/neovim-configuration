local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function()
	-- Packer just manages itself
	use 'wbthomason/packer.nvim'

    --markdown runner
	use 'gpanders/vim-medieval'
    use { 'michaelb/sniprun', run = 'bash ./install.sh'}

	-- nvim LSP configs
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

    --airline
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

    -- Completions engine
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

    -- Lua snippet engine (primarily to fufill requirements in hrsh7th/nvim-cmp)
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	-- colorscheme
    use 'folke/tokyonight.nvim'

	-- tagbars
	use 'preservim/tagbar'

	-- Treesitter is life
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	--tmux magic
	use 'christoomey/vim-tmux-navigator'

	-- Gaze deeply into the unknown
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--Use fzf native for telescope
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	
	-- nvim file tree. Alternative to NerdTree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require'nvim-tree'.setup {} end
	}

	--cool comments
	use 'scrooloose/syntastic'

	--deoplete
	use 'Shougo/deoplete.nvim'

    --bracket-closing
	use 'Raimondi/delimitMate'

	use 'zchee/deoplete-jedi'

	--bufferline
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	--jumping
	use 'unblevable/quick-scope'

	-- Git stuff
	use 'airblade/vim-gitgutter'

	-- comment stuff out
	use 'preservim/nerdcommenter'

	-- Time Pope is a god
	use 'tpope/vim-surround'
	use 'tpope/vim-fugitive'

	-- Yanking manager (yeah yeah I know, registers exist)
	use {
		"AckslD/nvim-neoclip.lua",
		requires = { {'nvim-telescope/telescope.nvim'} },
		config = function()
			require('neoclip').setup()
		end,
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function ()
			require'alpha'.setup(require'alpha.themes.theta'.config)
		end
	}
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end

end)