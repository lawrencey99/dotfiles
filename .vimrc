filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Quicker commands
nore ; :
nore , ;

" Modify backspace
set backspace=indent,eol,start
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" NERDTree config
map <C-n> :NERDTreeToggle<CR>

" Highlight searches
set incsearch
set hlsearch

" Changes tab to autocomplete to emulate IDE
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Map for easier splits
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K> 
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H> 

" Vim Plug
call plug#begin('~/.vim/plugged')
" Using git URL
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
call plug#end()


