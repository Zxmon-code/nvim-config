" Call Plugin Script
	lua require('plugins')

" General Settings
	let mapleader = ' '
	set mouse=a
	set nohlsearch
	set clipboard+=unnamedplus
	syntax on
	set number relativenumber
	set encoding=utf-8
	set wrap!

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" colorscheme
	if has('termguicolors')
		set termguicolors
	endif

	" Version
	set background=dark

	" Set contrast
	" This configuration option should be placed before 'colorscheme gruvbox-material
	" Available values: 'hard', 'medium'(default), 'soft'
	let g:gruvbox_material_background = 'medium'

	colorscheme gruvbox-material


" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Enable autocompletion:
	set wildmode=longest,list,full

" Perform dot command over visual blocks:
	vnoremap . :normal .<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright




" Plugin settings
	map <leader>e :NvimTreeToggle<cr>
	map <leader>f :Goyo \| set linebreak<CR>

" lualine
	lua require('lualine').setup { options = { theme = 'gruvbox-material' }}
