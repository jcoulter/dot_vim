map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Auto size the active window
let &winheight = &lines * 7/10
let &winwidth = &columns * 7/10

set ignorecase
set wildmenu
set wildmode=list:longest,full
set splitbelow
set splitright
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
 
" Formatting (some of these are for coding in C and C++)
set tabstop=2  " Tabs are 2 spaces
set backspace=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
 
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
syntax on

if has("autocmd")
  filetype indent on
  autocmd FileType markdown set wrap linebreak nolist
endif

" For Pathogen
call pathogen#infect()

" Save all backups here, rather than spreading around the file system.
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Enable Python Intellisense
autocmd FileType python set omnifunc=pythoncomplete#Complete ts=4 shiftwidth=4
autocmd FileType kivy set ts=4 shiftwidth=4
autocmd FileType qml set ts=4 shiftwidth=4
autocmd FileType cucumber set ts=2 shiftwidth=2

autocmd! BufNewFile,BufRead *.qml setlocal ft=qml
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
