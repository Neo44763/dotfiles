set relativenumber
set wildmenu
set nocompatible
filetype off
syntax on
set cursorline
set mouse=a
set showcmd
set tabstop=4 shiftwidth=4 expandtab


let mapleader=","
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>f :YcmCompleter FixIt<CR>

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'klen/python-mode'

call vundle#end()   

filetype plugin indent on
colo gruvbox
set background=dark
set laststatus=2

let g:ycm_global_ycm_extra_conf = '/home/ben/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:pymode_rope_complete_on_dot = 0
let g:pymode_warnings = 1

" pymode config file
let g:pymode_lint_config = '/home/ben/.vim/pylint.rc'

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
