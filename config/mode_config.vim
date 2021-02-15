"  __  __           _       ____             __ _
" |  \/  | ___   __| | ___ / ___|___  _ __  / _(_) __ _
" | |\/| |/ _ \ / _` |/ _ \ |   / _ \| '_ \| |_| |/ _` |
" | |  | | (_) | (_| |  __/ |__| (_) | | | |  _| | (_| |
" |_|  |_|\___/ \__,_|\___|\____\___/|_| |_|_| |_|\__, |
"                                                 |___/
"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""
" nnn
" Disable default mappings
let g:nnn#set_default_mappings = 0

" Then set your own
" nnoremap <silent> <leader>nn :NnnPicker<CR>

" Or override
" Start nnn in the current file's directory
nnoremap <leader>n :NnnPicker %:p:h<CR>
" Opens the nnn window in a split
let g:nnn#layout = 'new' " or vnew, tabnew etc.

" Or pass a dictionary with window size
let g:nnn#layout = { 'left': '~20%' } " or right, up, down

" Floating window (neovim latest and vim with patch 8.2.191)
let g:nnn#layout = { 'window': { 'width': 0.6, 'height': 0.6, 'highlight': 'Debug' } }
"""""""""""""""""""""""""""""""""""""

" Lazygit
if has('nvim-0.5.0')
	nnoremap <silent> <leader>lg :LazyGit<CR>
	let g:lazygit_floating_window_winblend = 0 " transparency of floating window
	let g:lazygit_floating_window_scaling_factor = 0.85 " scaling factor for floating window
	let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
	let g:lazygit_use_neovim_remote = 1 " for neovim-remote support
else
	echo 'use nvim-5.0.0 to make sure lazygit.nvim works'
endif
"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""
" Gundo
let g:gundo_auto_preview=1
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
let g:leetcode_browser='safari'
let g:leetcode_solution_filetype='cpp'
let g:leetcode_china=0
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

let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,.DS_Store,node_modules,vendor}/*"'
let $FZF_DEFAULT_OPTS="--preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range:300 {}'"

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
au Filetype html,wxml let g:AutoPairs["<"]=[">"]
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
			\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
			\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
			\	'operators': '_,_',
			\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
			\	'separately': {
			\		'*': {},
			\		'tex': {
			\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
			\		},
			\		'lisp': {
			\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
			\		},
			\		'vim': {
			\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
			\		},
			\		'html': {
			\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
			\		},
			\		'css': 0,
			\	}
			\}
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
autocmd BufRead,BufNewFile *.asm setfiletype nasm
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


"""""""""""""""""""""""""""""""""""""
" coc.nvim
let g:coc_global_extensions = ['coc-powershell', 'coc-texlab', 'coc-pyright', 'coc-ultisnips', 'coc-snippets', 'coc-java', 'coc-omnisharp', 'coc-phpls', 'coc-vimlsp', 'coc-xml', 'coc-calc', 'coc-cmake', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-stylelint', 'coc-tailwindcss', 'coc-tslint', 'coc-yaml', 'coc-git', 'coc-gitignore', 'coc-explorer', 'coc-translator', 'coc-flutter', 'coc-diagnostic', 'coc-sh', 'coc-rust-analyzer']
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
let g:calendar_google_task = 1
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
" Vimtex Latex
set shellslash
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'
"""""""""""""""""""""""""""""""""""""

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
" let g:lightline#bufferline#auto_hide = 4000
" let g:lightline#bufferline#number_map = {
"     \ 0: '⓪ ', 1: '① ', 2: '② ', 3: '③ ', 4: '④ ',
"     \ 5: '⑤ ', 6: '⑥ ', 7: '⑦ ', 8: '⑧ ', 9: '⑨ ',
"     \ 10: '⑩ ', 11: '⑪ ', 12: '⑫ ', 13: '⑬ ', 14: '⑭ ', 15: '⑮ ',
"     \ 16: '⑯ ', 17: '⑰ ', 18: '⑱ ', 19: '⑲ ', 20: '⑳ ' }
let g:lightline#bufferline#show_number     = 2
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#clickable       = 1
let g:lightline#bufferline#shorten_path    = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unnamed         = '[No Name]'
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
	\	  ['diagnostic', 'filetype', 'blame', 'cocstatus', 'currentfunction'],
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

autocmd VimEnter * call SetupLightlineColors()
function SetupLightlineColors() abort
  let l:pallete = lightline#palette()
  let l:pallete.normal.middle[0][1] = 'NONE'
  let l:pallete.visual.middle[0][1] = 'NONE'
  let l:pallete.tabline.middle[0][1] = 'NONE'
  call lightline#colorscheme()
endfunction
"""""""""""""""""""""""""""""""""""""
