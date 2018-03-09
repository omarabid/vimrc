vimrc
=====

This repository keeps track of my Vim workflow.

This configuration assumes MacOS (Latest) and a Qwerty keyboard.

## Vim Setup

1- Install NeoVim. This configuration file is made to work with NeoVim (not gVim or Vi). It might function with VIM but no garantuees.

2- Install vundle

```
$ git clone https://github.com/gmarik/vundle.git ~/.nvim/bundle/vundle
```

3- Install a PowerLine font from https://github.com/Lokaltog/powerline-fonts

6- Finally, run the following command in Vim to install the vundle packages.

```
$ :BundleInstall
```

7- That's all.

### Features

It's good to talk about some of the features that this particular setup bring

1- Code Highlighting.

2- Syntax Checking for HTML, JavaScript, CSS and PHP.

3- A directory explorer.

4- Intelligent Status Bar.

5- AutoSave file.

6- Enhanced code indenting for HTML, PHP and JavaScript.

7- Substitution and search highlighting.


**Key Bindings**

1- Use `Space+j`, `Space+h`, `Space+k`, `Space+l` to move between split windows.

2- Use `UP`, `DOWN`, `LEFT`, and `RIGHT` to resize the current window.

3- Use `B` to select the text inside a Tag, and `V` to select the whole tag.

4- Use `W` to select the current word, `X` to select the text inside parens and `C` to select text between quotes.

5- Use `jj` instead of Esc to switch to the command mode.

6- `F6` to run a Syntactic check, `F7` to display Syntactic errors list and `F8` to display the Tagbar

7- Use `r` to replace selected text with text in the clipboard.

8- Up, Left, Down and Right keys are disabled in command mode. Use `j`, `h`, `k`, and `l` instead.

9- Use `cc` to comment/uncomment a block of code. More commands are available through the NerdCommenter plugin.

10- Use `:S` to highlight substitution.

11- Use `²` when in insert mode to toggle paste mode.
