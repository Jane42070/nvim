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
It's easiest to explain with examples.  Press `cs"'` inside

    "Hello world!"

to change it to

    'Hello world!'

Now press `cs'<q>` to change it to

    <q>Hello world!</q>

To go full circle, press `cst"` to get

    "Hello world!"

To remove the delimiters entirely, press `ds"`.

    Hello world!

Now with the cursor on "Hello", press `ysiw]` (`iw` is a text object).

    [Hello] world!

Let's make that braces and add some space (use `}` instead of `{` for no
space): `cs]{`

    { Hello } world!

Now wrap the entire line in parentheses with `yssb` or `yss)`.

    ({ Hello } world!)

Revert to the original text: `ds{ds)`

    Hello world!

Emphasize hello: `ysiw<em>`

    <em>Hello</em> world!

Finally, let's try out visual mode. Press a capital V (for linewise
visual mode) followed by `S<p class="important">`.

    <p class="important">
      <em>Hello</em> world!
    </p>

This plugin is very powerful for HTML and XML editing, a niche which
currently seems underfilled in Vim land.  (As opposed to HTML/XML
*inserting*, for which many plugins are available).  Adding, changing,
and removing pairs of tags simultaneously is a breeze.

## Custom keymaps

| Key     | Map            |
|---------|----------------|
| ,r      | FileCompileRun |
| <space> | za, Fold       |
