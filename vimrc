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
" General text utilities
Plugin 'Raimondi/delimitMate'
" JS enhanced support
Plugin 'Yggdroot/indentLine'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'marijnh/tern_for_vim'
Plugin 'Chiel92/vim-autoformat'
"Plugin 'einars/js-beautify'
"Plugin 'maksimr/vim-jsbeautify'
" Plugin HTML
Plugin 'othree/html5.vim'
" JSX enhanced support
Plugin 'mxw/vim-jsx'
Bundle "justinj/vim-react-snippets"
" SnipMate and its dependencies:
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
" Other sets of snippets (optional):
Bundle "honza/vim-snippets"
" Tabularize support
Plugin 'godlygeek/tabular'
" Fast comments  support
Plugin 'scrooloose/nerdcommenter'
" CSV support
Plugin 'chrisbra/csv.vim'
" NODE support
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-scripts/jade.vim'
" JSON enhanced
Plugin 'elzr/vim-json'
" Coffeescript support
Plugin 'kchmck/vim-coffee-script'
" GitHub support
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" File Treeview
Plugin 'scrooloose/nerdtree'
" Undo history tree
Plugin 'sjl/gundo.vim'
" Find files
Plugin 'kien/ctrlp.vim'
" Tagline Outline
Plugin 'edkolev/tmuxline.vim'
" Easier navegation
Plugin 'Lokaltog/vim-easymotion'
" Buffer tabs
Plugin 'mkitt/tabline.vim'
" Status bar improvements
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Window/Layout manager
Plugin 'wesQ3/vim-windowswap'
" Auto complete for JS (and maybe C based langages, if you want)
Plugin 'Valloric/YouCompleteMe'
" Dynamic snippets
Plugin 'mattn/emmet-vim'
" JS-Doc
"Plugin 'heavenshell/vim-jsdoc'
" Sets universal defaults
Plugin 'tpope/vim-sensible'
" Syntax helper
Plugin 'scrooloose/syntastic'
" Hex coloring
Plugin 'vim-scripts/hexHighlight.vim'

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
" CTL-P
nmap <silent> <C-p> :CtrlPMixed<CR>
" TAB
nmap <silent> <C-t> :tabnew<CR>
" JSDOC
nmap <Leader>c :JsDoc<CR>
" EASY MOTION
nmap f <Plug>(easymotion-s)
" UTILS
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
"------------------------------------------------------------------------





" VIM PROPERTIES
""------------------------------------------------------------------------
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=1000 "maximum number lines to save for undo on a buffer
set number        " display line numbers
set hlsearch " Highlight search matches"
set tabstop=4 shiftwidth=4 expandtab
set scrolloff=30
set autowrite " Saves buffers when switching to others -saves a save"
set efm=jade:%f:%l:%c:%t:%m "Parse Jade errors
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " show “invisible” characters


let g:airline_theme = 'sol'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" GUTTER
let g:gitgutter_max_signs=10000000

" JSX
let g:jsx_ext_required = 0

" SYNTASTIC
let g:syntastic_javascript_closurecompiler_script = '/usr/local/Cellar/closure-linter/2.3.13/bin'
let g:syntastic_javascript_checkers = ["gjslint"]
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 0

" JSDOC
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1

" MACVIM
let macvim_skip_colorscheme=1

" COMMANDS
com! Refresh w | so ~/.vimrc
com! AF silent Autoformat

" TO DELETE
"com! HTMLFormat !tidy -mi -html % | w
"com! JSONFormat %!python -m json.tool


" AUTOCOMMANDS
" Gets rid of whitespace
autocmd BufWritePre * :%s/\s\+$//e
" AutoFormat
autocmd BufWritePre *.js :AF
autocmd BufWritePre *.json :AF
autocmd BufWritePre *.html :AF
autocmd BufWritePre *.css :AF
autocmd BufWritePre *.scss :AF
" Remeber the last line before closing file
autocmd BufReadPost * call setpos(".", getpos("'\""))








"  SOLARIZED SETTINGS
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
