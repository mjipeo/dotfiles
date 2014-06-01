# Dotfiles

## Dependencies

- Ag
- Exuberant ctags for Tagbar

## Todo

- Summarize all the custom key mappings in one place
- Syntastic custom checker (e.g. Pylint)
- My own snippets (e.g. Django, etc)
- EasyMotion vs Sneak
- Status line
- Buffers over Tabs
- Colorscheme
- Wrapping
- Folding
- Lint libraries for Syntastic
- Custom surround mappings
- CtrlP ignore configuration
- Jedi best practice and key mappings (e.g. Supertab)
- Custom key mapping for plugins

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


