echo "»----------------------►"

set autoindent  " autoindent always ON.
set expandtab  " expand tabs
set shiftwidth=4  " spaces for autoindenting
set softtabstop=4  " remove a full pseudo-TAB when i press <BS>

set hidden  " hides warning when opening files
set ignorecase  " ignores case in search
set nohlsearch
set noshowmode

set scrolloff=8  " Keep at least 8 lines below cursor

" set number relativenumber  " Relative numbers for jumping
set nu rnu  " Hybrid. Relative numbers and the current line number

set splitbelow splitright  " Set the splits to open at the right side and below

" set foldmethod=manual  " To avoid performance issues, I never fold anything
set lazyredraw  " To not redraw the screen when executing macros or commands
set ttyfast  " To draw faster. Disable on slow connections or terminals

set showmatch  " Moves cursor to opening matching paren when closing it
set matchtime=5  " Tenths of second the cursor stays in the openin paren

set clipboard^=unnamed,unnamedplus  " uses both vim's and OS' clipboard

set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//
" This is for cron to work
" http://vim.wikia.com/wiki/Editing_crontab
au BufEnter /private/tmp/crontab.* setl backupcopy=yes

""""""""""""
" Mappings "
""""""""""""
let mapleader = ","
let maplocalleader = "\\"

noremap - ddp
" Review this one, removes if too far up
noremap _ :move .-2<CR>

nnoremap <c-u> viwU

inoremap <c-u> <Esc>viwUi

" Closing paren/bracket/braces
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

lua require("init")
