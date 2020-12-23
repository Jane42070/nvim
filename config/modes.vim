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
" 括号选中
Plug 'gcmt/wildfire.vim'
" 中文标准化排版
Plug 'hotoo/pangu.vim'
" Vim 多光标操作
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
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
" Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-rust --enable-python --enable-c --enable-go'}
" Easy motion
Plug 'easymotion/vim-easymotion'
" Cursor Word
Plug 'itchyny/vim-cursorword'
" Interesting words
Plug 'lfv89/vim-interestingwords'
" Jupyter
" Plug 'jupyter-vim/jupyter-vim'
" file search --fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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
