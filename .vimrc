syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.

set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.
set backspace=2            " Fix backspace behavior on most terminals.

colorscheme murphy         " Change a colorscheme.

packloadall                " Load all plugins.
silent!helptags ALL        " Load help files for all plugins.

set wildmenu                    " Enable enhanced tab autocomplete.
set wildmode=list:longest,full  " Complete till longest string, then open menu.
set hlsearch                    " Highlight search results.
set incsearch                   " Search as you type.

" set foldmethod=indent      " Indentation-based folding.

set number " Display column numbers.
set relativenumber " Display relative column numbers.
highlight LineNr ctermfg=darkgrey ctermbg=black

" Navigate windows with <Ctrl-hjkl> instead of <Ctrl-w> followed by hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

let NERDTreeShowBookmarks = 1 " Display bookmarks on startup.
autocmd VimEnter * NERDTree " Enable NERDTree on Vim startup.
" Autoclose NERDTree " if it's the only open window left.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
  \ b:NERDTree.isTabTree()) | q | endif


" Set up persistent undo across all files.
set undofile
if !isdirectory(expand("$HOME/.vim/undodir"))
  call mkdir(expand("$HOME/.vim/undodir"), "p")
endif
set undodir=$HOME/.vim/undodir


