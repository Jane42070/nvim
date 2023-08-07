set number                                              " 显示行号
set relativenumber
" set cursorline                                          " 高亮当前行
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
set listchars+=eol:⏎                                    " 设置空白字符的视觉提示
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

" 命令窗口高度
set cmdheight=2

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

set bg=dark
colorscheme gruvbox
set termguicolors
" 透明背景
hi Normal ctermbg=None guibg=None
hi CursorLineNr ctermbg=None guibg=None
hi CursorLine ctermbg=None guibg=None
hi SignColumn ctermbg=None guibg=None
hi VertSplit ctermfg=None ctermbg=NONE cterm=NONE guibg=None guifg=None
hi Folded ctermbg=None guibg=None
hi GruvboxRedSign ctermbg=None guibg=None
hi GruvboxYellowSign ctermbg=None guibg=None
hi GruvboxOrangeSign ctermbg=None guibg=None
hi GruvboxAquaSign ctermbg=None guibg=None
hi GruvboxGreenSign ctermbg=None guibg=None
hi GruvboxBlueSign ctermbg=None guibg=None
hi Pmenu ctermbg=None guibg=None
hi PmenuSbar ctermbg=None guibg=None
" hi BufTabLineFill cterm=NONE guibg=None
" hi TabLineFill cterm=NONE guibg=None
" hi LightlineLeft_tabline_0_1 ctermbg=None guibg=None
hi CocUnderline cterm=NONE guibg=None

set fillchars+=vert:\ 
" 窗口的透明度
" set winblend=20
" autocmd User CocOpenFloat call setwinvar(g:coc_last_float_win, "&winblend", 20)
" 开启中文规范
" autocmd BufWritePre *.text,*.txt,*.wiki,*.cnx,*.md call PanGuSpacing()
