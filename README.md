Just pop this file into `~/.vim/syntax/`.

To enable syntax highlighting, use the command `:set syn=dcpu`.

To automatically enable highlighting for DCPU-16 files, add the following to your `.vimrc`:

`au BufNewFile,BufRead *.dasm16,*.dasm setf dcpu`

This enables DCPU-16 syntax highlighting for any files with the `.dc` or `.dcpu` extensions. (There's no official file extension yet, but something more specific than `.S` or `.asm` would be nice.)
