-- Plugins
vim.api.nvim_command('packadd packer.nvim')
require('nvim-tree').setup()
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
	}
	use 'sainnhe/gruvbox-material'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
	use 'junegunn/goyo.vim'
	use { 'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

end)
