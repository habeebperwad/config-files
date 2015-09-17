"""""""""""""""""""""""""""""""""""""""""""""
" Vim configuration file.
" File: ~/.vimrc
" Thanks to Bram Moolenaar to his great tool.
"""""""""""""""""""""""""""""""""""""""""""""

" I am living in vim era!
set nocompatible

" Show line number.
set number

" Turn on autoindent. It uses the indent from the previous line.
set autoindent

" Insert space characters whenever the tab key is pressed.
set expandtab
" The number of spaces per a tab for exapandtab.
set tabstop=4
" The number of spaces per indent.
set shiftwidth=4
" show exsisting tab as four spaces.
set softtabstop=4

" Fold the code block '{{{ CODE-BLOCK }}}'.
" No longer using this.
set foldmethod=marker

" Friendly search.
set ignorecase
set smartcase
set incsearch


" Stop arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Tab completion for file names.
set wildmode=longest:full,full
set wildmenu

" Make Q as paster... it is in lab.
"nnoremap Q :r !xclip -o<CR>


if &diff
    noremap <Right> ]cz.
    noremap <Left> [cz.
    noremap <Down> do
    noremap <Up> dp
    noremap <space> <C-W>w
endif

" Test the following and use.
"map :w!! :w !sudo tee > /dev/null %

nnoremap ; :

" Show me the current line!
highlight CursorLine term=none cterm=none ctermbg=lightgray
set cursorline

filetype plugin indent on

" Machine specific vimrc goes here.
try
   source ~/.vimrcx_habeebperwad 
catch
    " Usually I will try but won't catch :P
endtry
