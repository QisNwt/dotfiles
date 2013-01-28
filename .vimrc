"******************************
" Vundle
" see https://github.com/gmarik/vundle
"******************************
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"******************************
" Filetype
"******************************
" filetype: filetype detection,
" plugin: plugins for each filetype
" indent: indentation for each filetype
"filetype on
"filetype plugin on
"filetype indent on
filetype plugin indent on

"******************************
" Editor appearance
"******************************

" Show line number
set number

" Show whitespaces
set list

" Show invisible characters
set listchars=tab:>-,trail:-,eol:$,extends:>,nbsp:%

" Always display a status line
set laststatus=2

" Show the matching bracket
"set showmatch

" Syntax highlight
syntax on

" Color theme
" ref. http://nanasi.jp/articles/colorscheme/default_install/slate/view.html
colorscheme slate

" Background color of the status line
highlight statusline ctermfg=gray
" Foreground color of the mode message
highlight ModeMsg ctermfg=yellow
" Foreground color of the tab label
highlight TabLineSel ctermfg=yellow
" Statusline format. (ref. http://d.hatena.ne.jp/itchyny/20120609/1339249777)
set statusline=%{expand('%:p:t')}\ %<[%{expand('%:p:h')}]%=\ %m%r%y%w[%{&fenc!=''?&fenc:&enc}][%{&ff}][%3l,%3c,%3p]

"******************************
" Indent
"******************************

" Size of a tab (to show)
set tabstop=4

" Size of a tab (to insert)
set softtabstop=4

" Size of a tab (autoindent)
set shiftwidth=4

" Insert spaces instead of tabs
set expandtab

"******************************
" Search
"******************************

" Do case insensitive matching
set ignorecase

" Do case sensitive matching if the word has upper and lower case
" letters.
set smartcase

" Highlight matched words
set hlsearch

"******************************
" Others
"******************************

" Disable swapfile
set noswapfile
" Disable backup
"set nobackup

" Command line history
set history=100
" 
set display=uhex
" Scroll offset
set scrolloff=5
" Auto reload when updated
set autoread
" Always show cursor
set ruler

" execute 'set listchars+=tab:\ ' . nr2char(187)
" execute 'set listchars+=eol:' . nr2char(183)
" set list
