vimrc
=====

This repository keeps track of my Vim workflow.

This configuration assumes MacOS (Latest) and a Qwerty keyboard. As of late, my VIM configuration has become focused around Rust.

## Vim Setup

1- Install NeoVim. This configuration file is made to work with NeoVim (not gVim or Vi). It might function with VIM but no garantuees.

2- Install vundle

```
$ git clone https://github.com/gmarik/vundle.git ~/.nvim/bundle/vundle
```

3- Install a PowerLine font from https://github.com/Lokaltog/powerline-fonts

4- Finally, run the following command in Vim to install the vundle packages.

```
$ :BundleInstall
```

### Features

1- Code Highlighting.

2- Syntax Checking for Rust (Can extend to other languages of your choice).

3- A directories and files explorer.

4- Intelligent Status Bar.

5- AutoSave file.

6- Code Formatter for Rust (using RustFMT).

7- Substitution and search highlighting.

8- Git Status bar

9- Some useful keyboard shortcuts.


**Key Bindings**

1- Use `Space+j`, `Space+h`, `Space+k`, `Space+l` to move between split windows.

2- Use `UP`, `DOWN`, `LEFT`, and `RIGHT` to resize the current window.

3- Use `B` to select the text inside a Tag, and `V` to select the whole tag.

4- Use `W` to select the current word, `X` to select the text inside parens and `C` to select text between quotes.

5- Use `jj` instead of Esc to switch to the command mode.

6- Use `r` to replace selected text with text in the clipboard.

7- Up, Left, Down and Right keys are disabled in command mode. Use `j`, `h`, `k`, and `l` instead.

8- Use `cc` to comment/uncomment a block of code. More commands are available through the NerdCommenter plugin.

9- Use `:S` to highlight substitution.

10- Use `²` when in insert mode to toggle paste mode.
