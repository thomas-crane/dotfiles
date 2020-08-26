" use space for leader key
let mapleader = " "

" use Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" center the screen on search results.
noremap n nzz
noremap N Nzz

" use ctrl-key instead of ctrl-w + key to move between splits.
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tab to swtich buffers.
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Use [g and ]g to navigate to the previous and next diagnostic.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" IDE stuff.
" goto definition
nmap <silent> gd <Plug>(coc-definition)
" goto references
nmap <silent> gr <Plug>(coc-references)
" open explorer with ge
nmap <silent> ge :CocCommand explorer --toggle<CR>
" rename current symbol
nmap <leader>rn <Plug>(coc-rename)
" do code action for current line
nmap <leader>ca <Plug>(coc-codeaction)
" autofix problem for current line
nmap <leader>af <Plug>(coc-fix-current)

" maintain visual mode after shifting left/right.
vnoremap < <gv
vnoremap > >gv
