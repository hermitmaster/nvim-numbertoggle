# numbertoggle


In a buffer with "hybrid" line numbers (`:set number relativenumber`),
numbertoggle switches to absolute line numbers (`:set number norelativenumber`)
automatically when relative numbers don't make sense.

Relative numbers are used in a buffer that has focus, and is in normal
mode, since that's where you move around. They're turned off when you switch
out of Neovim, switch to another split, or when you enter insert mode.

## Installation


Once help tags are generated, you can view the manual with `:help numbertoggle`.

## tmux

If you use tmux, add `set-option -g focus-events on` to your tmux config (`~/.tmux.conf`).
