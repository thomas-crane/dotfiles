" coc settings
set cmdheight=2
set updatetime=300
set shortmess+=c

" use tab to go through the list of completions.
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_backspace() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_backspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

" use ctrl + space to cancel the completion.
inoremap <silent><expr> <c-space> coc#refresh()

" use enter to accept the current completion.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
" highlight symbol under cursor when idle
autocmd CursorHold * silent call CocActionAsync('highlight')

" use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

" format current buffer on :Fmt
command! -nargs=0 Fmt 	:call CocAction('format')
" organise imports of current buffer on :OI
command! -nargs=0 OI 	:call CocAction('runCommand', 'editor.action.organizeImport')


