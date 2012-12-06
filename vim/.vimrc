
call pathogen#infect()
filetype plugin indent on

syntax on
set autoindent
set nocompatible

set encoding=utf-8
set list
set list listchars=tab:→\ ,trail:·,eol:¬
set tabstop=2
set ruler
set laststatus=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
set guioptions-=r
set guioptions-=l
set guioptions-=b
set incsearch
set cursorline

set backspace=indent,eol,start
set showmatch
set nobackup
set noswapfile

set background=dark
colorscheme solarized

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git', '.hg', 'Rakefile']

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Show Marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1
highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen

if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
end
