# Dotfiles

## Dependencies

- Ag
- Exuberant ctags for Tagbar
- Patched fonts for powerline symbols in vim-airline
  (https://github.com/Lokaltog/powerline-fonts)


## Todo

### Zshrc

### Vim

- Clean up unused plugins
- http://benmccormick.org/2014/07/21/learning-vim-in-2014-getting-more-from-vim-with-plugins/
- Fix the <C-C> and <Esc> problem
- Better completion
  (https://github.com/Valloric/YouCompleteMe)
- Textobjects for Jinja
  (https://github.com/skwp/dotfiles/blob/master/doc/vim/textobjects.md)
- Finalze the key mapping for Tagbar and CtrlP
- Might need easier mapping for Ag as well
- Clean up and organize the vimrc file (possibly into multiple files)
- Python-mode
- Summarize all the custom key mappings in one place
- Syntastic custom checker (e.g. Pylint)
- My own snippets (e.g. Django, etc)
- EasyMotion vs Sneak
- File manupilation in NERDTree
- Custom git key bindings (e.g. checkout, branch, merge)
- Buffers over Tabs
  (http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs)
  (http://vim.wikia.com/wiki/Easier_buffer_switching#Scripts)
- Folding
- Lint libraries for Syntastic
- Custom surround mappings
- CtrlP ignore configuration
- Jedi best practice and key mappings (e.g. Supertab)
- Try other completion libraries as well (e.g. Necomplcache)
- Tmux and vimux
  (http://robots.thoughtbot.com/seamlessly-navigate-vim-and-tmux-splits)
- More from others' rcs
  (https://github.com/skwp/dotfiles)
  (https://github.com/amix/vimrc)
  (https://github.com/carlhuda/janus)
- Tips
  (http://vim.wikia.com/wiki/Best_Vim_Tips)
  (http://rayninfo.co.uk/vimtips.html)
- Custom key mapping for plugins

### Dotfiles

- zsh (e.g. oh-my-zsh)
- bash completion (if needed)
- gitconfig
- program-specific setings (e.g. .arignore)
- bootstrap script
- custom functions & executables
  (https://github.com/rtomayko/dotfiles/tree/rtomayko/bin)


## Snippet

- __init__ with args

## Tips

Finally, Vim has built in tag support for motions. This means that, if you’re
used to operating on paragraphs using, say, dap (delete a paragraph) or ci(
(delete and insert in parentheses), you can do the same with tags: dat deletes
the tag that the cursor is in, and dit deletes only the contents of the tag.
And if you’re writing HTML or XML, make sure you’ve got closetag.vim installed
so that Vim automatically inserts a closing tag when you type </.

~        : Toggle the case (upper/lower) of the character under the cursor.
di(      : Delete inside parentheses. (You can be anywhere inside them.)
da<      : Delete around angle brackets.
dit      : Delete inside tag. (Meaning, delete what's between the opening and closing tags.)
c)       : Change from cursor position to the beginning of the next sentence.
c}       : Change from cursor position to the end of the paragraph.
ci"      : Change inside quotes (not including quotes).
ca"      : Change around quotes (including quotes).
cit      : Change inside tag contents (between opening and closing tags).
cat      : Change a tag's contents (includes opening/closing tags).
cis      : Change inside sentence (doesn’t include space after period).
cas      : Change a sentence (includes space after period).
cip      : Change inside paragraph (doesn’t include blank line).
cap      : Change a paragraph (includes blank line).
ci<      : Change inside tag name (between opening and closing angle brackets).
ca<      : Change a tag name (includes brackets).
ci(      : Change inside parentheses.
ci{      : Change inside curly braces.
ci[      : Change inside square brackets.
C        : Delete the rest of the line and enter insert mode.
ct[char] : Change from cursor position to [char].
>aB      : Indent current block (defined by curly braces).
>ap      : Indent current paragraph.
>i{      : Indent inside current set of curly braces.
=        : Reformat selected text (in visual mode).
yw       : Yank from the cursor to the beginning of the next word.
yip      : Yank inside paragraph.
yas      : Yank a sentence.
yi<      : Yank inside angle brackets.
<C-r>"   : In insert mode: Put from the unnamed register.

:sort

nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz

.   repeat last text-changing command
~   reverse case of current character and move cursor forward
`   move to marked line, memorized column`
;   repeat last "f", "F", "t", or "T" command
+   move to first non-whitespace of next line
-   move to first non-whitespace of previous line
&   repeat last ex substitution (":s ...") not including modifiers
a   enter insertion mode after current character
A
I
X   delete backwards single character
R   replace mode - replaces through end of current line, then inserts
C   change to end of line
cc

t
T
f
F

w
W
b
B
e
E

]p [p       like p, P with indent adjusted]
n^A n^X     +n, -n to number under cursor
`c `C       go to mark c in current, C in any file
n^O         go to nth older position in jump list
n^I         go to nth newer position in jump list

