" color scheme
syntax on
colorscheme dracula

" make the background transparent
" highlight Normal ctermbg=none
" highlight NonText ctermbg=none

" line numebrs.
" use relative line numbers in normal mode and switch to absolute line numbers when unfocused or in insert mode.
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" scroll
set scrolloff=2
set sidescrolloff=5

" gutter
set numberwidth=4

" invisible chars.
set list
set listchars=eol:¬,tab:>·,extends:>,precedes:<,space:·
