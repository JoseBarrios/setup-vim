"-----------------
" VUNDLE PLUGINS:
"------------------
"

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
" JS enhanced support
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Yggdroot/indentLine'
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'
Plugin 'einars/js-beautify'
Plugin 'maksimr/vim-jsbeautify'
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
" Window/Layout manager
Plugin 'wesQ3/vim-windowswap'
" Auto complete for JS (and maybe C based langages, if you want)
Plugin 'Valloric/YouCompleteMe'
" C/C++ highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'
" Dynamic snippets
Plugin 'mattn/emmet-vim'
" JS-Doc
Bundle 'heavenshell/vim-jsdoc'     

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line
"------------------------------------------------------------------------



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

" WINDOW SWAP
"map <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
"nmap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
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
" WINDOW OPTS
nmap <Leader>hh :wincmd h<CR>
nmap <Leader>ll :wincmd l<CR>
nmap <Leader>kk :wincmd k<CR>
nmap <Leader>jj :wincmd j<CR>

nmap <Leader>r :Refresh<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>w :wall<CR>
nmap <Leader>^ :res -5<CR>
nmap <Leader>v :res +5<CR>
nmap <Leader>> :vertical resize +5<CR>
nmap <Leader>< :vertical resize -5<CR>

" JSDOC
nmap <Leader>c :JsDoc<CR>
" Tab navegation
map <Leader>l :tabnext<CR>
map <Leader>h :tabprev<CR>
" SAVING
map <C-w> :wall<CR>
" Avoid using repeating keystrokes to navegate horizintal lines, use
" easyMotion
"map h <nop>
"map l <nop>
" Bi-directional find motion
nmap f <Plug>(easymotion-s)
"------------------------------------------------------------------------




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
set list          " displays whitespace
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
" Synestatic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*










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

" Keep default theme for tabline, much better than airlines
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_powerline_fonts=1
let g:tagbar_iconchars = ['▸', '▾']
highlight clear SignColumn

" C/C++ highlight enabled
let g:cpp_class_scope_highlight = 1

" SYNTASTIC
let g:syntastic_javascript_closurecompiler_script = '/usr/local/Cellar/closure-linter/2.3.13/bin'
let g:syntastic_javascript_checkers = ["gjslint"]
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 0
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1

" WINDOW SWAP 
let g:windowswap_map_keys = 0 "prevent default bindings
let g:airline#extensions#windowswap#enabled = 1
let g:airline#extensions#windowswap#indicator_text = 'WS'

" JSDOC
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1

" EASY MOTION
let g:EasyMotion_do_mapping = 0 " Disable default mappings

highlight SyntasticErrorSign guifg=black guibg=black
highlight SyntasticWarningLine guifg=black guibg=black
highlight SyntasticStyleErrorLine guifg=black guibg=black
highlight SyntasticStyleWarningLine guifg=black guibg=black

" COMMANDS
com! JSONFormat %!python -m json.tool
com! Refresh w | so ~/.vimrc
com! JSFormat call JsBeautify()


" Automatic commands
autocmd BufWritePre *.js :%s/\s\+$//e
" Auto JSBeautify on start (for js files only)
autocmd BufWritePre *.js :JSFormat
" Closes nerdtree if it's the only window left to close in vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
