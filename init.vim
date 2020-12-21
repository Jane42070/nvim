"  __  __         _   _       _
" |  \/  |_   _  | \ | |_   _(_)_ __ ___  _ __ ___
" | |\/| | | | | |  \| \ \ / / | '_ ` _ \| '__/ __|
" | |  | | |_| | | |\  |\ V /| | | | | | | | | (__
" |_|  |_|\__, | |_| \_| \_/ |_|_| |_| |_|_|  \___|
"         |___/
" Jane
" mail : jql1377219787@gmail.com
call plug#begin('~/.config/nvim/plugged')
" 撤销树 Gundo
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', {'for': 'tex'}
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" calling lazygit
Plug 'kdheepak/lazygit.nvim'
" leetcode
Plug 'ianding1/leetcode.vim'
" rgb 颜色显示
Plug 'chrisbra/colorizer'
" 括号补全
Plug 'jiangmiao/auto-pairs'
" 包围
Plug 'anyakichi/vim-surround'
" 中文标准化排版
Plug 'hotoo/pangu.vim'
" Vim 多光标操作
Plug 'terryma/vim-multiple-cursors'
" 增强<C-A>/<C-X>
Plug 'tpope/vim-speeddating'
" 增强.
Plug 'tpope/vim-repeat'
" CSV
Plug 'chrisbra/csv.vim', {'for': 'csv'}
" vim-json
Plug 'elzr/vim-json', {'for': 'json'}
" vim 缩进参考线
Plug 'Yggdroot/indentLine', {'for': ['go', 'python', 'c', 'cpp']}
" Vim-move
Plug 'matze/vim-move'
" Calendar
Plug 'itchyny/calendar.vim', {'on': 'Calendar'}
" nvim startscreen --vim-startify
" Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'liuchengxu/vista.vim', {'on': 'Vista'}
" Super searching
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" vimspector
Plug 'puremourning/vimspector'
" Easy motion
Plug 'easymotion/vim-easymotion'
" Cursor Word
Plug 'itchyny/vim-cursorword'
" Interesting words
Plug 'lfv89/vim-interestingwords'
" Jupyter
" Plug 'jupyter-vim/jupyter-vim'
" file search --fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'antoinemadec/coc-fzf'
" File Compile Run
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
" Extra Syntax Highlight
Plug 'sheerun/vim-polyglot'
" lightline
Plug 'morhetz/gruvbox'
" onedark theme
Plug 'joshdick/onedark.vim'
" srcery-colors
Plug 'srcery-colors/srcery-vim'
" iceberg theme
Plug 'cocopon/iceberg.vim'
Plug 'itchyny/lightline.vim'
" devicons make lightline more graphical
Plug 'ryanoasis/vim-devicons'
" lightline-bufferline
Plug 'mengelbrecht/lightline-bufferline'
" Latex 插件
Plug 'lervag/vimtex', {'for': 'tex'}
" Golang
Plug 'fatih/vim-go', {'for': ['go', 'vim-plug']}
" Arduino
Plug 'sudar/vim-arduino-syntax', {'for': 'ino'}
Plug 'stevearc/vim-arduino', {'for': 'ino'}
" markdown 语言插件
Plug 'godlygeek/tabular'
Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', {'for': ['markdown', 'text']}
Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/vim-easy-align', {'on': '<Plug>(EasyAlign)'}
" html 插件
" Wechat development
Plug 'chemzqm/wxapp.vim'
Plug 'mattn/emmet-vim', {'for': ['html', 'wxml', 'css', 'wxss', 'vim-plug', 'php']}
Plug 'pangloss/vim-javascript', {'for': ['html', 'vim-plug', 'php', 'javascript']}
" 注释
Plug 'scrooloose/nerdcommenter'
" 代码片段
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" 代码折叠
Plug 'konfekt/fastfold'
call plug#end()
"""""""""""""""""""""""""""""""""""""
"         CUSTOM MY NVIM            "
"""""""""""""""""""""""""""""""""""""
" set clipboard+=unnamed                                " 共享剪切板
" make Y to copy till the end of the line
nnoremap Y y$
" Copy to system clipboard
vnoremap Y "+y
set number                                              " 显示行号
set relativenumber
set cursorline                                          " 高亮当前行
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
" set listchars+=eol:⏎                                  " 设置空白字符的视觉提示
syntax on                                               " 语法高亮
filetype plugin indent on                               " 根据文件类型自动处理缩进
filetype on
set shortmess=atI                                       " 取消显示帮助可怜的乌干达儿童
set autochdir
set undofile                                            " 设置持久性撤销和重复
set ignorecase                                          " 大小写不敏感
set smartcase                                           " 开启智能推测
set textwidth=80
set linebreak                                           " 不对单词折行
" 设置文件编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,utf-16,big5
set termencoding=utf-8
set encoding=utf-8                                      " 编码
set fenc=utf-8                                          " 编码
set scrolloff=5
set sidescrolloff=15
set shiftwidth=4
set tabstop=4
set softtabstop=4
set backspace=2                                         " 修正多数终端上 backspace 行为
set cindent                                             " 设置 C 自动缩进
set incsearch                                           " 输入字符串就显示匹配点
set hlsearch
set showmatch                                           " 显示匹配的括号
set scrolloff=3                                         " 距离顶部和底部 3 行
set mouse=a                                             " 启用鼠标
set hlsearch                                            " 搜索高亮
set autoindent                                          " 设置自动缩进
set wrap                                                " 设置折叠
set tags=./.tags;,.tags

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" 快捷跳出 vim 内置 terminal
" tnoremap <c-m> <c-\><c-n>

" 对于中文括号跳出的支持
inoremap （ （）<LEFT>
inoremap 【 【】<LEFT>
inoremap 《 《》<LEFT>
inoremap “ “”<LEFT>
inoremap ‘ ‘’<LEFT>

imap ） <ESC>f）a
imap 】 <ESC>f】a
imap 》 <ESC>f》a
imap ”  <ESC>f”a
imap ’  <ESC>f’a

noremap U :redo<CR>

" 搜索高亮后　前后跳转：下一个 / 上一个
" n/N
" 高亮显示复制区域
hi HighlightedyankRegion cterm=reverse gui=reverse
let g:highlightedyank_highlight_duration = 500

" Enable folding
set foldmethod=indent
set foldlevel=99

" 设置背景颜色和主题
let g:gruvbox_italicize_comments=1
" SimplyFold
let g:gruvbox_italicize_strings=0
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_contrast_light='soft'
let g:gruvbox_improved_warnings=1
let g:gruvbox_termcolors=256

" reverse the color of signs, so bad!
" let g:gruvbox_invert_signs=1
set background=dark
colorscheme gruvbox
" colorscheme srcery
set termguicolors

" 开启中文规范
autocmd BufWritePre *.text,*.txt,*.wiki,*.cnx,*.md call PanGuSpacing()

"""modeconfig"""
"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""
" Lazygit
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.85 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support
nnoremap <silent> <leader>lg :LazyGit<CR>
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" MarkdownPreview
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0
" let g:vim_markdown_conceal = 0
set conceallevel=1
" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1
" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0
" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0
" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0
" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''
" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''
" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0
" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''
" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''
" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''
" use a custom port to start server or random for empty
let g:mkdp_port = ''
" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" Arduino
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" Leetcode
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>
let g:leetcode_browser='chrome'
let g:leetcode_solution_filetype='cpp'
let g:leetcode_china=1
"""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""
" vimspector
" packadd! vimspector
" let g:vimspector_enable_mappings = 'HUMAN'
" let g:vimspector_install_gadgets = ['vscode-cpptools', 'vscode-go']
" let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" Jupyter
" Run current file
" let g:jupyter_mapkeys = 0
" let g:python3_host_prog = '/usr/local/bin/python3.8'
" nnoremap <buffer> <silent> <localleader>R :JupyterRunFile<CR>
" nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>

" " Change to directory of current file
" nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

" " Send a selection of lines
" nnoremap <buffer> <silent> <localleader>X :JupyterSendCell<CR>
" nnoremap <buffer> <silent> <localleader>E :JupyterSendRange<CR>
" nmap     <buffer> <silent> <localleader>e <Plug>JupyterRunTextObj
" vmap     <buffer> <silent> <localleader>e <Plug>JupyterRunVisual

" nnoremap <buffer> <silent> <localleader>U :JupyterUpdateShell<CR>

" " Debugging maps
" nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" FZF
if exists('$TMUX')
	let g:fzf_layout = {'tmux': '-p90%,60%'}
else
	let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
endif

if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif
" Need to install bat, rg, fzf, ag
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

command! -bang -complete=dir -nargs=* LS
    \ call fzf#run(fzf#wrap({'source': 'ls', 'dir': <q-args>}, <bang>0))
" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" autopairs
autocmd FileType * let g:AutoPairs={'（':'）'}
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" colorizer
let g:colorizer_auto_filetype='css,html,wxss,wxml'
let g:colorizer_skip_comments = 1
let g:colorizer_syntax = 1
let g:colorizer_use_virtual_text = 1
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-go
let g:go_version_warning = 1
let g:go_code_completion_enabled = 1
let g:go_info_mode = 'gopls'
let g:go_updatetime = 200
let g:go_def_mode = 'gopls'
let g:go_referrers_mode = 'gopls'
let g:go_auto_type_info = 1
let g:go_highlight_format_strings = 1
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
" golang highlight
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_variable_declarations = 0
let g:go_highlight_variable_assignments = 0
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" emmet-vim
" Only enable in html, css files
let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
			\ 'wxss': {
			\   'extends': 'css',
			\ },
			\ 'wxml': {
			\   'extends': 'html',
			\   'aliases': {
			\     'div': 'view',
			\     'span': 'text',
			\   },
			\  'default_attributes': {
			\     'block': [{'wx:for-items': '{{list}}','wx:for-item': '{{item}}'}],
			\     'navigator': [{'url': '', 'redirect': 'false'}],
			\     'scroll-view': [{'bindscroll': ''}],
			\     'swiper': [{'autoplay': 'false', 'current': '0'}],
			\     'icon': [{'type': 'success', 'size': '23'}],
			\     'progress': [{'precent': '0'}],
			\     'button': [{'size': 'default'}],
			\     'checkbox-group': [{'bindchange': ''}],
			\     'checkbox': [{'value': '', 'checked': ''}],
			\     'form': [{'bindsubmit': ''}],
			\     'input': [{'type': 'text'}],
			\     'label': [{'for': ''}],
			\     'picker': [{'bindchange': ''}],
			\     'radio-group': [{'bindchange': ''}],
			\     'radio': [{'checked': ''}],
			\     'switch': [{'checked': ''}],
			\     'slider': [{'value': ''}],
			\     'action-sheet': [{'bindchange': ''}],
			\     'modal': [{'title': ''}],
			\     'loading': [{'bindchange': ''}],
			\     'toast': [{'duration': '1500'}],
			\     'audio': [{'src': ''}],
			\     'video': [{'src': ''}],
			\     'image': [{'src': '', 'mode': 'scaleToFill'}],
			\   }
			\ },
			\}
autocmd FileType html,css,wxml,wxss EmmetInstall
" Enable all mode functions.
let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<TAB>'
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" Consider a as b
autocmd BufRead,BufNewFile *.nas setfiletype nasm
let b:asmsyntax = "nasm"
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" javascript-vim
let g:javascript_plugin_jsdoc           = 1
let g:javascript_plugin_ngdoc           = 1
let g:javascript_plugin_flow            = 1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-multiple-cursors
" If you don't like the plugin taking over your key bindings, you can turn it off and reassign them the way you want:
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" coc-actions
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" tabular
let g:tabular_loaded = 1
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" fastfold
nmap zuz <Plug>(FastFoldUpdate)
" Enable folding with the spacebar
nnoremap <space> za
let g:fastfold_savehook               = 1
let g:fastfold_fold_command_suffixes  = ['x', 'X', 'a', 'A', 'o', 'O', 'c', 'C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:markdown_folding                = 1
let g:tex_fold_enabled                = 1
let g:vimsyn_folding                  = 'af'
let g:xml_syntax_folding              = 1
let g:javaScript_fold                 = 1
let g:php_folding                     = 1
let g:sh_fold_enabled                 = 7
let g:multi_cursor_start_key          = 'g<C-n>'
let g:multi_cursor_select_all_key     = 'g<A-n>'
let g:multi_cursor_next_key           = '<C-n>'
let g:multi_cursor_prev_key           = '<C-p>'
let g:multi_cursor_skip_key           = '<C-x>'
let g:multi_cursor_quit_key           = '<Esc>'
xnoremap iz :<c-u>FastFoldUpdate<cr><esc>:<c-u>normal! ]zv[z<cr>
xnoremap az :<c-u>FastFoldUpdate<cr><esc>:<c-u>normal! ]zV[z<cr>
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" coc-snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" tabular
let g:tabular_loaded = 1
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
let g:NERDAltDelims_c = 1
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = {
"             \'c': { 'left': '/*', 'right': '*/' }
"             \}
let g:NERDCompactSexyComs = 1
" Comment on insert mode
imap <C-c> <plug>NERDCommenterInsert

" coc-translator
" popup
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)
" echo
nmap <Leader>e <Plug>(coc-translator-e)
nmap <Leader>e <Plug>(coc-translator-ev)
" replace
nmap <Leader>r <Plug>(coc-translator-r)
nmap <Leader>r <Plug>(coc-translator-rv)
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" CSV.VIM
filetype plugin on
if exists("did_load_csvfiletype")
  finish
endif
let did_load_csvfiletype=1
let g:csv_delim_test = ',;|'
let g:csv_hiHeader = 'Pmenu'
let g:csv_nl = 1
let g:csv_nomap_cr = 1
let b:csv_fixed_width="1,5,9,13,17,21"
let g:csv_highlight_column = 'y'
augroup filetypedetect
  au! BufRead,BufNewFile *.csv,*.dat    setfiletype csv
augroup END
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vista.vim
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
noremap <silent> <F4> :Vista!!<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" coc-bookmarks
nmap mj <Plug>(coc-bookmark-next)
nmap mk <Plug>(coc-bookmark-prev)
nmap mm <Plug>(coc-bookmark-toggle)
nmap ma <Plug>(coc-bookmark-annotate)
""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" Interesting words
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>

let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
"let g:interestingWordsRandomiseColors = 1
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" coc-git
nnoremap <silent> <space>g  :<C-u>CocList --normal gstatus<CR>
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" markdown-vim
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_math = 1
let g:markdown_fenced_languages = ['css', 'js=javascript']
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_frontmatter = 1
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""
" 快捷键
map <F3> :CocCommand explorer<CR>
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

"""""""""""""""""""""""""""""""""""""
" coc.nvim
let g:coc_global_extensions = ['coc-powershell', 'coc-texlab', 'coc-python', 'coc-ultisnips', 'coc-snippets', 'coc-java', 'coc-bookmark', 'coc-omnisharp', 'coc-phpls', 'coc-vimlsp', 'coc-xml', 'coc-calc', 'coc-cmake', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-stylelint', 'coc-tailwindcss', 'coc-tslint', 'coc-yaml', 'coc-git', 'coc-gitignore', 'coc-explorer', 'coc-translator', 'coc-flutter', 'coc-diagnostic', 'coc-sh', 'coc-rust-analyzer']
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-calendar
" let g:calendar_google_calendar = 1
" let g:calendar_google_task = 1
" Google-api
map TL :Calendar -view=clock<CR>
map TT :Calendar<CR>
" source ~/.cache/calendar.vim/credentials.vim
""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" latex-preview
" let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'xelatex'
" autocmd Filetype tex setl updatetime=20
autocmd Filetype tex setl updatetime=1000
" let g:livepreview_previewer = 'evince'
" nmap <F12> :LLPStartPreview<cr>
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-xelatex',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
let g:tex_conceal='abdmg'
" let g:livepreview_previewer = 'open -a texshop'
" let g:livepreview_previewer = 'open -a PDF\ Expert'
let g:livepreview_previewer = 'open -a Skim'
" let g:livepreview_previewer = 'gv'
" let g:livepreview_previewer = 'open -a PDF\ Reader\ Pro'
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-table-mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?

" To get ReST-compatible tables use
" let g:table_mode_corner_corner='+'
" For Markdown-compatible tables use
let g:table_mode_corner='|'
" let g:table_mode_header_fillchar='='
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" markdown-preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
"""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" Vimtex Latex
set shellslash
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'
"""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
"     _
"    / \   ___ _   _ _ __   ___ _ __ _   _ _ __
"   / _ \ / __| | | | '_ \ / __| '__| | | | '_ \
"  / ___ \\__ \ |_| | | | | (__| |  | |_| | | | |
" /_/   \_\___/\__, |_| |_|\___|_|   \__,_|_| |_|
"              |___/
"   设置运行可执行文件
let g:asyncrun_mode="term"
let g:asyncrun_open=8
let $PYTHONNUNBUFFERED=1
map ,r :call CompileRun()<CR>
map ,R :call MultiCompileRun()<CR>
func! CompileRun()
	exec "w"
	if &filetype == 'c'
		exec "AsyncRun -rows=8 -focus=0 gcc % -o %<;./%<"
	elseif &filetype == 'cpp'
		exec "AsyncRun -rows=8 -focus=0 g++ % -o %<; ./%<"
	elseif &filetype == 'java'
		exec "AsyncRun -mode=term -rows=8 -focus=0 javac %; java %<"
	elseif &filetype == 'sh'
		exec "AsyncRun -mode=term -rows=8 -focus=0 bash %"
	elseif &filetype == 'python'
		exec "AsyncRun -mode=term -rows=8 -focus=0 -raw python3.9 %"
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
	endif
endfunc
" Now this function only works for c and cpp
func MultiCompileRun()
	exec "w"
	if &filetype == 'c'
		exec "AsyncRun -rows=8 -focus=0 gcc *.c -o %<; ./%<"
	elseif &filetype == 'cpp'
		exec "AsyncRun -rows=8 -focus=0 g++ *.cpp -o %<; ./%<"
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
	endif
endfunc
autocmd BufNewFile * normal G

" 打开一个文件自动定位到上一次退出时的位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____  _                        _
" / ___|(_)_ __  _ __  _ __   ___| |_ ___
" \___ \| | '_ \| '_ \| '_ \ / _ \ __/ __|
"  ___) | | | | | | | | |_) |  __/ |_\__ \
" |____/|_|_| |_|_| |_| .__/ \___|\__|___/
"                     |_|
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" lightline
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
" let g:lightline#bufferline#number_map = {
"     \ 0: '⓪ ', 1: '① ', 2: '② ', 3: '③ ', 4: '④ ',
"     \ 5: '⑤ ', 6: '⑥ ', 7: '⑦ ', 8: '⑧ ', 9: '⑨ ',
"     \ 10: '⑩ ', 11: '⑪ ', 12: '⑫ ', 13: '⑬ ', 14: '⑭ ', 15: '⑮ ',
"     \ 16: '⑯ ', 17: '⑰ ', 18: '⑱ ', 19: '⑲ ', 20: '⑳ ' }
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#clickable = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline = {
	\ 'tabline': {'left': [['buffers']], 'right': [['close']]},
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '', 'right': '' },
	\ 'component': {
	\   'lineinfo': ' %3l:%-2v',
	\   'relativepath': '%f',
	\   'absolutepath': '%F',
	\ },
	\ 'colorscheme': 'gruvbox',
	\ 'active': {
	\   'left': [
	\     ['paste', 'mode'],
	\     ['fugitive', 'ctrlpmark', 'filename', 'method'],
	\   ],
	\   'right':[
	\     ['fileencoding', 'fileformat', 'lineinfo', 'percent'],
	\	  ['diagnostic', 'blame', 'cocstatus', 'currentfunction'],
	\	  ['filetype']
	\   ],
	\ },
	\ 'component_raw': {'buffers': 1},
	\ 'component_type': {'buffers': 'tabsel'},
	\ 'component_expand': {'buffers': 'lightline#bufferline#buffers'},
	\ 'component_function': {
	\  'fugitive': 'LightlineFugitive',
	\  'blame': 'LightlineGitBlame',
	\  'readonly': 'LightlineReadonly',
	\  'mode': 'LightlineMode',
	\  'filename': 'LightlineFilename',
	\  'cocstatus':'coc#status',
	\  'currentfunction': 'CocCurrentFunction',
	\  'filetype': 'MyFiletype',
	\  'fileformat': 'MyFileformat',
	\  'method': 'NearestMethodOrFunction',
	\ }
\ }
" lightline-bufferline
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
set showtabline=2
set guioptions-=e
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  let readonly = &readonly ? ' ' : ''
  return readonly . filename . modified
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

autocmd User CocGitStatusChange {command}
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

function! LightlineMode()
  return expand('%:t') =~# '^__Tagbar__' ? 'Tagbar':
        \ expand('%:t') ==# 'ControlP' ? 'CtrlP' :
        \ &filetype ==# 'unite' ? 'Unite' :
        \ &filetype ==# 'coc-explorer' ? 'explorer' :
        \ &filetype ==# 'vimshell' ? 'VimShell' :
        \ &filetype ==# 'qf' ? 'QuickFix' :
        \ &filetype ==# '__vista__' ? 'Vista' :
        \ lightline#mode()
endfunction
let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:explorer_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
"""""""""""""""""""""""""""""""""""""
