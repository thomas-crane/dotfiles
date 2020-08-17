" install vim-plug if it isn't already installed.
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/plugged')

" syntax highlighting.
Plug 'sheerun/vim-polyglot'

" IDE features (autocomplete, linting, etc).
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" status bar.
Plug 'vim-airline/vim-airline'

" colour themes.
Plug 'dracula/vim', { 'as': 'dracula' }

" tpope stuff.
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'

" misc.
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
Plug 'junegunn/fzf.vim'

call plug#end()
