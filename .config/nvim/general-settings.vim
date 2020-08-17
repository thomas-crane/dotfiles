" always confirm when exiting without saving.
set confirm

" always use utf8.
set fileencoding=utf-8

" make backspace more consistent.
set backspace=indent,eol,start

" use 2 spaces, replace tabs with 2 spaces.
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" wrap at 120 chars by default.
set wrap
set textwidth=120
set colorcolumn=120

" search options.
set ignorecase
set smartcase
set nohlsearch

" spellcheck lang.
set spelllang=en_au

" window split options.
set splitbelow
set splitright

" don't remove buffers when they are not used.
set hidden

" persistent undo
set undofile

" wildmenu autocompletion.
set wildmode=longest:full,full

" markdown plugin stuff
let g:markdown_fenced_languages = ['ts=typescript']
