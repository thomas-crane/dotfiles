" install vim-plug if it isn't already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'HerringtonDarkholme/yats.vim'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

call plug#end()

" airline settings
let g:airline_powerline_fonts = 1

" coc settings
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c

" Use tab to go through the list of completions.
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_backspace() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_backspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use Ctrl + Space to cancel the completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use enter to accept the current completion.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use [g and ]g to navigate to the previous and next diagnostic.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

""" Various keybinds
" goto definition
nmap <silent> gd <Plug>(coc-definition)

" format current buffer on :Fmt
command! -nargs=0 Fmt 	:call CocAction('format')
" organise imports of current buffer on :OI
command! -nargs=0 OI 	:call CocAction('runCommand', 'editor.action.organizeImport')

set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

set splitbelow
set splitright
