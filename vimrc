
execute pathogen#infect()
syntax on
filetype plugin indent on


syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
	set guifont=DejaVu\ Sans\ Mono\ 14
endif

nmap <F8> :TagbarToggle<CR>

