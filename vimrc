"-----------------
" VUNDLE PLUGINS:
"------------------
set nocompatible " be iMproved, required"
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


""""""""""""""""""
" GENERAL FORMATTING:
""""""""""""""""""
" Automatic closing of quotes, parentesis, brackets, etc
Plugin 'Raimondi/delimitMate'
" Sets sensible defaults
Plugin 'tpope/vim-sensible'


""""""""""""""""""
" LANGUAGE:
""""""""""""""""""
" Various language syntax and indentation support
Plugin 'sheerun/vim-polyglot'
" Autocomplete with tab, uses snippets:
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" On request snippets templates
Plugin 'mattn/emmet-vim'
" Auto complete for JS (and maybe C based langages, if you want)
Plugin 'Valloric/YouCompleteMe'
" Comment lines faster
Plugin 'scrooloose/nerdcommenter'


""""""""""""""""""
" FILE PARSE AND FORMAT SUPPORT:
""""""""""""""""""
" CSV support
Plugin 'chrisbra/csv.vim'


""""""""""""""""""
" LAYOUT:
""""""""""""""""""
" File Treeview
Plugin 'scrooloose/nerdtree'
" Tagline / vim editor footer with info
Plugin 'edkolev/tmuxline.vim'
" Buffer tabs
Plugin 'mkitt/tabline.vim'
" Status bar improvements
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


""""""""""""""""""
" VERSIONING SUPPORT:
""""""""""""""""""
" GitHub gutter sinage
Plugin 'airblade/vim-gitgutter'
" Undo history tree
Plugin 'sjl/gundo.vim'


""""""""""""""""""
" NAVIGATION AND SEARCH:
""""""""""""""""""
" Find files
Plugin 'kien/ctrlp.vim'
" Easier navegation by jumping to matching character
Plugin 'Lokaltog/vim-easymotion'
" Window/Layout manager
Plugin 'wesQ3/vim-windowswap'


" Tagline Outline
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line
"------------------------------------------------------------------------

syntax on
set smartindent


" VIM FOLDERS:
"------------------------------------------------------------------------
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif
"------------------------------------------------------------------------



" MAPPINGS:
"------------------------------------------------------------------------
"
"Commands                        Mode
"--------                        ----
"nmap, nnoremap, nunmap          Normal mode
"imap, inoremap, iunmap          Insert and Replace mode
"vmap, vnoremap, vunmap          Visual and Select mode
"xmap, xnoremap, xunmap          Visual mode
"smap, snoremap, sunmap          Select mode
"cmap, cnoremap, cunmap          Command-line mode
"omap, onoremap, ounmap          Operator pending mode

let mapleader = ","
" WINDOW SWAP
map <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
" GUNDO
nmap <silent> <C-u> :GundoToggle<CR>
" NERDTree
nmap <silent> <C-n> :NERDTreeToggle<CR>
" TAGBAR
nmap <silent> <C-o> :TagbarToggle<CR>
" TAB
nmap <silent> <C-t> :tabnew<CR>
" EASY MOTION
nmap f <Plug>(easymotion-s)

" GENERAL
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
map <Leader>l :tabnext<CR>
map <Leader>j :tabprev<CR>
nmap <Leader>r :Refresh<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>w :wall<CR>
nmap <Leader>^ :res -5<CR>
nmap <Leader>v :res +5<CR>
nmap <Leader>> :vertical resize +5<CR>
nmap <Leader>< :vertical resize -5<CR>




" VIM PROPERTIES:
""------------------------------------------------------------------------
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=1000 "maximum number lines to save for undo on a buffer
set number        " display line numbers
set hlsearch " Highlight search matches"
set tabstop=4 shiftwidth=4 expandtab
set scrolloff=30
set autowrite " Saves buffers when switching to others -saves a save"
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " show “invisible” characters





" PLUGINS CUSTOMIZATION:
""------------------------------------------------------------------------

" SNIPPET AUTOCOMPLETE (with tab)
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" AIRLINE
let g:airline_theme = 'sol'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" GUTTER
let g:gitgutter_max_signs=10000000

" MACVIM
let macvim_skip_colorscheme=1




" CUSTOM COMMANDS:
""------------------------------------------------------------------------
" Updates vim with the latest vimrc
com! Refresh w | so ~/.vimrc
"com! AF Autoformat
"com! HTMLFormat !tidy -mi -html %
"com! JSONFormat %!python -m json.tool


" AUTOCOMMANDS
" Gets rid of whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" Remeber the last line before closing file
autocmd BufReadPost * call setpos(".", getpos("'\""))





"  SOLARIZED SETTINGS:
"------------------------------------------------------------------------
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized
" Custom line column colors
highlight LineNr ctermbg=NONE ctermfg=59
highlight SignColumn ctermbg=NONE guibg=NONE
highlight GitGutterAdd ctermfg=green guifg=green
highlight GitGutterChange ctermfg=yellow guifg=yellow
highlight GitGutterDelete ctermfg=red guifg=red
highlight GitGutterChangeDelete ctermfg=yellow guifg=yellow
"------------------------------------------------------------------------
