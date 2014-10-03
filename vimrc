set nocompatible " be iMproved, required"
" VUNDLE PACKAGE MANAGER
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" General text utilities
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
" JS enhanced support
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Yggdroot/indentLine'
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
" Tabularize support
Plugin 'godlygeek/tabular'
" Fast comments  support
Plugin 'scrooloose/nerdcommenter'
" CSV support
Plugin 'chrisbra/csv.vim'
" NODE support
Plugin 'digitaltoad/vim-jade'
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
" Multi-file support
Plugin 'vim-pandoc/vim-pandoc'
" Multi-file syntax support
Plugin 'vim-pandoc/vim-pandoc-syntax'
" Tagline Outline
Plugin 'majutsushi/tagbar'
" Terminal Multiplexe 
Plugin 'edkolev/tmuxline.vim'
" Easier navegation
Plugin 'Lokaltog/vim-easymotion'
" Buffer tabs
Plugin 'mkitt/tabline.vim'
" Status bar improvements
Plugin 'bling/vim-airline'
" Shell emulator for vim windows
Plugin 'vim-scripts/Conque-Shell'
" Window/Layout manager
Plugin 'wesQ3/vim-windowswap'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line


" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif


" CUSTOM SETTINGS
set term=xterm
set nocompatible
filetype on       " detect type of file
syntax enable     " allow custom syntax highlighting / 'syntax on' overrules custom settings
set t_Co=256      " higher color definition for terminal
set completeopt=menu
set encoding=utf-8
set scrolloff=30 " Minimum lines above and below the cursor
set lazyredraw    " Makes redrawing more efficient, specially with macros"
set ttyfast "Faster scrolling"
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer
set number        " display line numbers
set autoindent    " copy the indentation from the previous line, when starting a new line.
set autowrite " Saves buffers when switching to others -saves a save"
set tabstop=4     " tab is 4 columns long
set shiftwidth=4  " autoindent is 4 spaces long
set expandtab     " insert mode: Use the appropriate number of spaces to insert a tab
set incsearch     " Find as you type
"set list          " displays whitespace
set hlsearch      " Highlight searches
set showmode      " how the current mode
set laststatus=2  " Always show the status line
set ignorecase    " case insensitive search
set mousehide     " hide mouse when typing
set mouse=a       " enables full mouse support in terminal
set wildmenu      " More useful command-line completion
set efm=jade:%f:%l:%c:%t:%m "Parse Jade errors
set wildmode=list:longest,full " Autocomplete/expand to longest name"
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " show “invisible” characters
set nolist "Hide invisible characters
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " ignore filetype list for MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " ignore filetype list for Windows


" THEME
let g:solarized_degrade    = 0
let g:solarized_termcolors = 256
let g:solarized_termtrans  = 1
let g:solarized_bold       = 1
let g:solarized_underline  = 1
let g:solarized_italic     = 1
let g:solarized_contrast   = 'normal'
let g:solarized_visibility = 'normal'
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
"hi Visual         term=reverse ctermbg=7 guifg=Black guibg=Black
    
let mapleader=","
let g:airline_theme = 'light'
let g:airline#extensions#gitgutter#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_powerline_fonts=1
let g:tagbar_iconchars = ['▸', '▾']
highlight clear SignColumn

let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" MAPPINGS
noremap <silent> <C-u> :GundoToggle<CR>
noremap <silent> <C-n> :NERDTreeToggle<CR>
noremap <silent> <C-o> :TagbarToggle <CR>
noremap <silent> <C-p> :CtrlPMixed <CR>
noremap <silent> <C-t> :tabnew <CR>
"Navegate buffers and tabs
nmap <silent> <C-h> :wincmd h <CR>
nmap <silent> <C-l> :wincmd l <CR>
nmap <silent> <C-k> :wincmd k <CR>
nmap <silent> <C-j> :wincmd j <CR>
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" COOL BUT UNUSED
"nmap <C-j> ddp
"nmap <C-k> ddkP
"nmap <silent> <C-h> :tabp <CR>
"nmap <silent> <C-l> :tabn <CR>

nmap <Leader>^ :res -5 <CR>
nmap <Leader>v :res +5 <CR>
nmap <Leader>> :vertical resize +5 <CR>
nmap <Leader>< :vertical resize -5 <CR>

nmap <Leader>l :tabnext <CR>
nmap <Leader>h :tabprev <CR>

" GET RID OF NOOB HABITS BY DISABILIING ARROW KEYS
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Bi-directional find motion
nmap s <Plug>(easymotion-s)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)


" COMMANDS
com! JSONFormat %!python -m json.tool
com! Refresh w | so ~/.vimrc
com! JSFormat call JsBeautify()
com! Init13 source ~/.vim/init-one-three.vim



