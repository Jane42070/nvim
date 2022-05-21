# My nvim config
<!-- vim-markdown-toc GFM -->

* [Applied Plugins](#applied-plugins)
	* [Vim-easy-align](#vim-easy-align)
	* [Vimtex(for latex)](#vimtexfor-latex)
	* [Latex-live-preview](#latex-live-preview)
	* [Ultisnippets](#ultisnippets)
	* [Vim-markdown](#vim-markdown)
	* [MarkdownPreview](#markdownpreview)
	* [Lightline](#lightline)
	* [Coc.nvim (for completion)](#cocnvim-for-completion)
	* [Vim-table-mode](#vim-table-mode)
	* [vim-surround](#vim-surround)
* [Custom keymaps](#custom-keymaps)
* [Custom functions](#custom-functions)
* [TODO](#todo)
	* [snippets](#snippets)
	* [plugins](#plugins)

<!-- vim-markdown-toc -->

## Applied Plugins
### [Vim-easy-align](https://github.com/junegunn/vim-easy-align)
![QuickStart](https://raw.githubusercontent.com/junegunn/i/master/easy-align/equals.gif)
```vim
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
```
Then with the following lines of text,
```
apple   =red
grass+=green
sky-=   blue
```
try these commands:
- `vipga=`
	- `v`isual-select `i`nner `p`aragraph
	- Start EasyAlign command (`ga`)
	- Align around `=`
- `gaip=`
	- Start EasyAlign command (`ga`) for `i`nner `p`aragraph
	- Align around `=`

### Vimtex(for latex)
### Latex-live-preview
### Ultisnippets
### Vim-markdown
### MarkdownPreview
### Lightline
### Coc.nvim (for completion)
### [Vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)

### vim-surround

| Old text              | Command | New text ~                |
|-----------------------|---------|---------------------------|
| "Hello *world!"       | ds"     | Hello world!              |
| Hello w*orld!         | ysiw)   | Hello (world)!            |
| Hello w*orld!         | yssB    | {Hello world!}            |
| [123+4*56]/2          | cs])    | (123+456)/2               |
| "Look ma, I'm *HTML!" | cs"<q>  | <q>Look ma, I'm HTML!</q> |
| if *x>3 {             | ysW(    | if ( x>3 ) {              |
| my $str = *whee!;     | vlllls' | my $str = 'whee!';        |
| "Hello *world!"       | ds"     | Hello world!              |
| (123+4*56)/2          | ds)     | 123+456/2                 |
| <div>Yo!*</div>       | dst     | Yo!                       |

## Custom keymaps

| Key        | Map                    |
|------------|------------------------|
| ,r         | FileCompileRun         |
| ,R         | MultiCompileRun        |
| <F3>       | explorer(coc-explorer) |
| <F4>       | Vista(universal-ctags) |
| <SPACE>e   | coc-extensions         |
| <S-c>      | coc-commands           |
| <leader>t  | coc-translator         |
| <leader>lg | lazygit                |
| ,f         | Files(fzf)             |
| ,c         | File Content(rg)       |
| <F7>       | Count CN words         |
| <space>    | za, Fold               |
| <leader>cc | comment                |
| <leader>cu | uncomment              |
| <leader>nn | nnn file browser       |

## Custom functions

| Func name | Action                |
|-----------|-----------------------|
| Config    | edit nvim config file |

## TODO
### snippets
- Use own snippets
- Python, golang, c, etc

### plugins
- fix markdown display issue
