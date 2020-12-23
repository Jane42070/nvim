" set clipboard+=unnamed                                " 共享剪切板
" make Y to copy till the end of the line
nnoremap Y y$
" Copy to system clipboard
vnoremap Y "+y
" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
noremap U :redo<CR>

