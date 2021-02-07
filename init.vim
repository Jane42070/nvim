"  __  __         _   _       _
" |  \/  |_   _  | \ | |_   _(_)_ __ ___  _ __ ___
" | |\/| | | | | |  \| \ \ / / | '_ ` _ \| '__/ __|
" | |  | | |_| | | |\  |\ V /| | | | | | | | | (__
" |_|  |_|\__, | |_| \_| \_/ |_|_| |_| |_|_|  \___|
"         |___/
" Jane42070
" mail : 1377219787@qq.com
source ~/.config/nvim/config/modes.vim
source ~/.config/nvim/config/mode_config.vim
source ~/.config/nvim/config/keymaps.vim
source ~/.config/nvim/config/sets.vim
if empty(glob("~/.config/nvim/config/calendar.vim"))
	echo "calendar.vim need google keys!"
else
	source ~/.config/nvim/config/calendar.vim
endif

"   设置运行可执行文件
let g:asyncrun_mode="term"
let $PYTHONNUNBUFFERED=1
map ,r :call CompileRun()<CR>
func! CompileRun()
	exec "w"
	if &filetype == 'c'
		exec "AsyncRun -rows=8 -focus=0 gcc % -o %<;./%<"
	elseif &filetype == 'cpp'
		exec "AsyncRun -rows=8 -focus=0 g++ % -o %<; ./%<"
	elseif &filetype == 'java'
		exec "AsyncRun -mode=term -rows=8 -focus=0 javac %; java %<"
	elseif &filetype == 'sh'
		exec "AsyncRun -mode=term -rows=8 -focus=0 sh %"
	elseif &filetype == 'fish'
		exec "AsyncRun -mode=term -rows=8 -focus=0 fish %"
	elseif &filetype == 'python'
		exec "AsyncRun -mode=term -rows=8 -focus=0 -raw python3 %"
	elseif &filetype == 'html'
		exec "!open % &"
	elseif &filetype == 'go'
		exec "AsyncRun -mode=term -rows=8 -focus=0 go run %"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		exec "LLPStartPreview"
	elseif &filetype == 'vim'
		exec "source %"
	else
		echo "Unkown filetype"
	endif
endfunc
"自动插入文件头
autocmd BufNewFile *.cpp,*.cc,*.c,*h,*.sh,*.py,*.tex,.gitignore exec ":call SetHeader()"
func! SetHeader()
	if expand("%:e") == 'sh'
		call setline(1,"\#!/bin/bash")
		call append(line("."), "")
	elseif expand("%:e") == 'tex'
		call setline(1, "%!Tex program = xelatex")
		call setline(2, "%-- coding: utf-8 --")
		call append(line(".")+1, "")
	elseif expand("%:e") == 'py'
		call setline(1, "#!/usr/local/bin/python")
		call setline(2, "# -*- coding: utf-8 -*-")
		call append(line(".")+1, "")
	elseif expand("%:e") == 'cpp'
		call setline(1,"#include <iostream>")
		call setline(2, "")
		call setline(3, "using namespace std;")
		" call setline(4, "using std::cout;")
		" call setline(5, "using std::endl;")
		call setline(4, "")
	elseif expand("%:e") == 'cc'
		call setline(1,"#include <iostream>")
		call setline(2, "")
		call setline(3, "using std::cin;")
		call setline(4, "using std::cout;")
		call setline(5, "using std::endl;")
		call setline(6, "")
	elseif expand("%:e") == 'c'
		call setline(1, "#include <stdio.h>")
		call setline(2, "#include <stdlib.h>")
		call setline(3, "#include <string.h>")
		call setline(4, "#include <unistd.h>")
		call setline(5, "#include <math.h>")
		call setline(6, "#include <time.h>")
		call setline(7, "")
		call setline(8, "")
	elseif expand("%:e") == 'h'
		call setline(1, "#ifndef ".toupper(expand("%:r"))."_H")
		call setline(2, "#define ".toupper(expand("%:r"))."_H")
		call setline(3,"")
		call setline(4, "#endif")
	elseif expand("%") == '.gitignore'
		call setline(1, "# Windows")
		call setline(2, "[Dd]esktop.ini")
		call setline(3, "Thumbs.db")
		call setline(4, "$RECYCLE.BIN/")
		call setline(5, "")
		call setline(6, "# macOS")
		call setline(7, ".DS_Store")
		call setline(8, ".fseventsd")
		call setline(9, ".Spotlight-V100")
		call setline(10, ".TemporaryItems")
		call setline(11, ".Trashes")
		call setline(12, "")
		call setline(13, "# Node.js")
		call setline(14, "node_modules/")
	elseif expand("%:e") == 'fish'
		call setline(1, "#!/usr/bin/fish")
		call setline(2, "")
	endif
endfunc
autocmd BufNewFile * normal G

function! ChineseCount() range
	let save = @z
	silent exec 'normal! gv"zy'
	let text = @z
	let @z = save
	silent exec 'normal! gv'
	let cc = 0
	for char in split(text, '\zs')
		if char2nr(char) >= 0x2000
			let cc += 1
		endif
	endfor
	echo "Count of Chinese charasters is:"
	echo cc
endfunc

vnoremap <F7> :call ChineseCount()<cr>

" 打开一个文件自动定位到上一次退出时的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" hi Normal ctermfg=252 ctermbg=none

function Config() abort
	edit ~/.config/nvim/init.vim
endfunction
command Config call Config()
