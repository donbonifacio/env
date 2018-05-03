
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'git@github.com:altercation/vim-colors-solarized.git'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'git@github.com:tpope/vim-fugitive.git'
Plug 'tpope/vim-vinegar'
Plug 'Townk/vim-autoclose'

Plug 'janko-m/vim-test'
Plug 'git@github.com:tpope/vim-dispatch.git'

Plug 'git@github.com:pangloss/vim-javascript.git'
Plug 'git@github.com:mxw/vim-jsx.git'

Plug 'tpope/vim-rails'

Plug 'git@github.com:guns/vim-clojure-static.git'
Plug 'git@github.com:tpope/vim-fireplace.git'
Plug 'luochen1990/rainbow'

Plug 'metakirby5/codi.vim'
call plug#end()

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
hi ALEErrorSign ctermfg=1
hi ALEWarningSign ctermfg=3

filetype plugin indent on

let &t_Co=256
let t_Co=256
colorscheme Tomorrow-Night-Eighties
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
set colorcolumn=80
set guioptions-=b
set guioptions-=T
set incsearch
set cursorline
set backspace=indent,eol,start
set showmatch
set nobackup
set noswapfile
set number
set autoread
set relativenumber
set clipboard=unnamed

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git', '.hg', 'Rakefile']
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn))|(node_modules|vendor|coverage|target)$'

" use silver searcher
" http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " use ag on Ack
  let g:ackprg = 'ag --vimgrep'
endif

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

" Omni complete on tab
function! SuperCleverTab()
  if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
    return "\<Tab>"
  else
    return "\<C-N>"
  endif
endfunction
inoremap <Tab> <C-R>=SuperCleverTab()<cr>

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
end

autocmd BufNewFile,BufReadPost *.cljx setfiletype clojure
autocmd BufNewFile,BufReadPost *.cljc setfiletype clojure
autocmd BufNewFile,BufReadPost *.pxi setfiletype clojure

let mapleader = ","
map <Leader>m :Rmodel <CR>
map <Leader>c :Rcontroller <CR>
map <Leader>v :Rview <CR>
map <Leader>u :Runittest <CR>

map <Leader>l :TestLast <CR>
map <Leader>n :TestNearest <CR>
map <Leader>t :TestFile <CR>

nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g

" spell check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell
