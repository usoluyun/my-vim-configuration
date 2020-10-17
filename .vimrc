set encoding=utf-8
set nu
syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YCM
Plugin 'ycm-core/YouCompleteMe'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" NerdTree
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Color Theme
Plugin 'NLKNguyen/papercolor-theme'

" Syntax
Plugin 'scrooloose/syntastic'

" Super Search
Plugin 'kien/ctrlp.vim'

" comments
Plugin 'preservim/nerdcommenter'

" Taglist
Bundle 'taglist.vim'   

" Taglist
Plugin 'easymotion/vim-easymotion'

" git
Plugin 'tpope/vim-fugitive'

" surround
Plugin 'tpope/vim-surround'

" black formatter
Plugin 'ambv/black'

" Trigger configuration. You need to change this to something else than <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

set ts=4
set sw=4
set sts=4
set autoindent
set smarttab
set expandtab

" python 
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
im :<CR> :<CR><TAB>
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

let python_highlight_all=1

" nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" YouCompleteMe
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']


" Color Scheme
set background=light
colorscheme PaperColor

