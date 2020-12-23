"""""""""""""""""""""""""""""""""
" 快捷键
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
nnoremap ,e :CocCommand explorer<CR>
nnoremap ,v :Vista<CR>
nnoremap <F5> :GundoToggle<CR>
map C :CocCommand<CR>
map ,f  :Files<CR>
map ,c  :RG<CR>
map ,pl :PlugInstall<CR>
map ,ps :PlugStatus<CR>
map ,pd :PlugUpdate<CR>
map ,pg :PlugUpgrade<CR>
map ,pc :PlugClean<CR>
map ,ps :PlugStatus<CR>
" 新建标签页
map tt :tabe<CR>
" 浏览标签页
noremap <S-TAB> :bnext<CR>
" map tc :tabclose<CR>
" 快捷缩进
vnoremap < <v
vnoremap > >v

" 映射 jk 为<ESC>
inoremap jk <ESC>

" 使用 s + hjkl 在 nvim 中快速分屏
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" 使用<Ctrl> + hjkl 在窗口间快速切换
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
