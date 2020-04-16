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
" Plug 'elzr/vim-json'
" Vim-move
Plug 'matze/vim-move'
" Calendar
Plug 'itchyny/calendar.vim', {'on': 'Calendar'}
" nvim startscreen --vim-startify
" Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'liuchengxu/vista.vim', {'on': 'Vista'}
" Super searching
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" Easy motion
Plug 'easymotion/vim-easymotion'
" Cursor Word
Plug 'itchyny/vim-cursorword'
" Interesting words
Plug 'lfv89/vim-interestingwords'
" file search --fzf
Plug 'junegunn/fzf', {'on': 'FZF', 'do': { -> fzf#install() }}
" File Compile Run
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
" Extra Syntax Highlight
Plug 'sheerun/vim-polyglot'
" lightline
Plug 'morhetz/gruvbox'
" onedark theme
Plug 'joshdick/onedark.vim'
" iceberg theme
" Plug 'cocopon/iceberg.vim'
Plug 'itchyny/lightline.vim'
" devicons make lightline more graphical
Plug 'ryanoasis/vim-devicons'
" lightline-bufferline
Plug 'mengelbrecht/lightline-bufferline'
" Latex 插件
Plug 'lervag/vimtex', {'for': 'tex'}
" Golang
Plug 'fatih/vim-go', {'for': ['go', 'vim-plug']}
" markdown 语言插件
Plug 'godlygeek/tabular'
Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', {'for': ['markdown', 'text']}
Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'junegunn/vim-easy-align', {'on': '<Plug>(EasyAlign)'}
" html 插件
Plug 'mattn/emmet-vim', {'for': ['html', 'css', 'vim-plug', 'php']}
Plug 'pangloss/vim-javascript', {'for': ['html', 'vim-plug', 'php', 'javascript']}
" 注释
Plug 'scrooloose/nerdcommenter'
" 代码片段
" Plug 'honza/vim-snippets'
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
set cursorline                                          " 高亮当前行
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽ " 设置空白字符的视觉提示
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
set encoding=utf-8                                      " 编码
set fenc=utf-8                                          " 编码
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

" 对于中文括号跳出的支持
inoremap （ （）<LEFT>
inoremap 【 【】<LEFT>
inoremap 《 《》<LEFT>
inoremap “ “”<LEFT>
inoremap ‘ ‘’<LEFT>

imap ） <ESC>f）a
imap 】 <ESC>f】a
imap 》 <ESC>f》a
" 这两个触发可能会产生问题
imap ”  <ESC>f” a
imap ’  <ESC>f’ a

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
set termguicolors

" 开启中文规范
autocmd BufWritePre *.text,*.txt,*.wiki,*.cnx,*.py call PanGuSpacing()
"""modeconfig"""
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" colorizer
" let g:colorizer_auto_color = 1
let g:colorizer_auto_filetype='css,html'
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
let g:user_emmet_mode='a'    "only enable normal mode functions.
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=','
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" javascript-vim
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"
"""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""
" vim-multiple-cursors
" If you don't like the plugin taking over your key bindings, you can turn it off and reassign them the way you want:
let g:multi_cursor_use_default_mapping=0

" Default mapping
" Default mapping
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
" leaderF
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
" let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
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
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x', 'X', 'a', 'A', 'o', 'O', 'c', 'C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:php_folding = 1
let g:sh_fold_enabled= 7
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
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
" leaderF
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
" let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
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
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x', 'X', 'a', 'A', 'o', 'O', 'c', 'C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:sh_fold_enabled= 7
let g:javaScript_fold = 1
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
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

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
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
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }

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
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""
" 快捷键
map <F3> :CocCommand explorer<CR>
nnoremap <F5> :GundoToggle<CR>
map C :CocCommand<CR>
" map ,f  :FZF<CR>
map ,pl :PlugInstall<CR>
map ,ps :PlugStatus<CR>
map ,pd :PlugUpdate<CR>
map ,pg :PlugUpgrade<CR>
map ,pc :PlugClean<CR>
map ,ps :PlugStatus<CR>
" 新建标签页
map tt :tabe<CR>
" 浏览标签页
" noremap <TAB><TAB> :tabnext<CR>
" noremap <S-TAB> :tabprevious<CR>
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
let g:coc_global_extensions = ['coc-powershell', 'coc-texlab', 'coc-python', 'coc-snippets', 'coc-java', 'coc-bookmark', 'coc-omnisharp', 'coc-phpls', 'coc-vimlsp', 'coc-xml', 'coc-calc', 'coc-cmake', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-stylelint', 'coc-git', 'coc-explorer', 'coc-translator', 'coc-flutter']
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see 0.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

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
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> ,k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
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

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
	call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
	call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>d  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
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
autocmd Filetype tex setl updatetime=100
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
set conceallevel=1
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
let g:asyncrun_open = 8
let $PYTHONNUNBUFFERED=1
map ,r :call CompileRun()<CR>
func! CompileRun()
        exec "w"
if &filetype == 'c'
            exec "AsyncRun -mode=term -rows=8 -focus=0 gcc % -o %<; ./%<"
elseif &filetype == 'cpp'
            exec "AsyncRun -mode=term -rows=8 -focus=0 g++ % -o %<; ./%<"
elseif &filetype == 'java'
            exec "AsyncRun -mode=term -rows=8 -focus=0 javac %; java %<"
elseif &filetype == 'sh'
            exec "AsyncRun -mode=term -rows=8 -focus=0 bash %"
elseif &filetype == 'python'
            exec "AsyncRun -mode=term -rows=8 -focus=0 -raw python3.8 %"
elseif &filetype == 'html'
            exec "!open % &"
elseif &filetype == 'go'
			exec "AsyncRun -mode=term -rows=8 -focus=0 go build %<; go run %"
elseif &filetype == 'markdown'
			exec "MarkdownPreview"
elseif &filetype == 'tex'
			exec "LLPStartPreview"
elseif &filetype == 'vim'
			exec "source %"
endif
    endfunc

"自动插入文件头
autocmd BufNewFile *.cpp,*.cc,*.c,*h,*.sh,*.py,*.tex exec ":call SetHeader()"
func! SetHeader()
    if expand("%:e") == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif expand("%:e") == 'tex'
        call setline(1, "%!Tex program = xelatex")
		call setline(2, "%-- coding: utf-8 --")
        call append(line(".")+1, "")
    elseif expand("%:e") == 'py'
        call setline(1, "#!/usr/local/bin/python3.8")
		call setline(2, "# -*- coding: utf-8 -*-")
        call append(line(".")+1, "")
    elseif expand("%:e") == 'cpp'
        call setline(1,"#include <iostream>")
        call setline(2, "")
        call setline(3, "using std::cin;")
        call setline(4, "using std::cout;")
        call setline(5, "using std::endl;")
        call setline(6, "")
    elseif expand("%:e") == 'cc'
        call setline(1,"#include <iostream>")
        call setline(2, "")
        call setline(3, "using std::cin;")
        call setline(4, "using std::cout;")
        call setline(5, "using std::endl;")
        call setline(6, "")
    elseif expand("%:e") == 'c'
        call setline(1,"#include <stdio.h>")
        call setline(2,"#include <stdlib.h>")
        call setline(3,"")
    elseif expand("%:e") == 'h'
        call setline(1, "#ifndef ".toupper(expand("%:r"))."_H")
        call setline(2, "#define ".toupper(expand("%:r"))."_H")
        call setline(3,"")
        call setline(4, "#endif")
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
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
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
let g:lightline#bufferline#number_map = {
\ 0: '⓿ ', 1: '① ', 2: '② ', 3: '③ ', 4: '④ ',
\ 5: '⑤ ', 6: '⑥ ', 7: '⑦ ', 8: '⑧ ', 9: '⑨ '}
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
