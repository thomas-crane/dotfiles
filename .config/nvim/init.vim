" install vim-plug if it isn't already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch': 'next',
	\ 'do': 'bash install.sh',
	\ }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" airline settings
let g:airline_powerline_fonts = 1

" deoplete
let g:deoplete#enable_at_startup = 1
set completeopt=menu,noinsert
" disable deoplete for markdown
autocmd FileType markdown
			\ call deoplete#custom#buffer_option('auto_complete', v:false)

" language client config
set hidden
let g:LanguageClient_serverCommands = {
	\ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
	\ 'typescript':  ['~/.npm-global/bin/javascript-typescript-stdio'],
	\ 'javascript': ['~/.npm-global/bin/javascript-typescript-stdio'],
	\ }

nnoremap <silent> gh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

set splitbelow
set splitright
