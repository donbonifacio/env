
call pathogen#infect()
filetype plugin indent on

set autoindent
syntax on
set nocompatible

set encoding=utf-8
set list
set list listchars=tab:→\ ,trail:·,eol:¬
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap

set background=dark
colorscheme solarized

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git', '.hg', 'Rakefile']

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
end
