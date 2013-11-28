vimrc
=====

The following repository is created to follow the changes in my vimrc configuration.

## Vim Setup

1- First, install Vim (if not already installed). This configuration file is made to work with Vim (not gVim or Vi).

2- Second, install vundle the package manager of choice using the following command

```
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

3- Install the Exuberant Ctags module for the TagBar to work properly. Get the URL of the last package from `http://ctags.sourceforge.net/`

```
rpm -Uvh http://prdownloads.sourceforge.net/ctags/ctags-5.8-1.i386.rpm
```

4- Install the required Syntax checkers

```
npm install jslint -g
npm install csslint -g
pear install PHP_CodeSniffer
```

5- Finally, run the following command in Vim to install the vundle packages.

```
$ BundleInstall
```

6- You are ready to start coding!

### Features

It's good to talk about some of the features that this particular setup bring

1- Code Highlighting

2- Syntax Checking for HTML, JavaScript, CSS and PHP

3- A directory explorer

4- Intelligent Status Bar

5- AutoSave file

6- Enhanced code indenting for HTML, PHP and JavaScript


**Key Bindings**

1- Use Space+j, Space+h, Space+k, Space+l to move between split windows.

2- Use B to select the text inside a Tag, and V to select the whole tag.

3- Use jj instead of Esc to switch to the command mode.

4- F6 to run a Syntactic check, F7 to display Syntactic errors list and F8 to display the Tagbar

5- Use r to replace selected text with text in the clipboard.

6- Up, Left, Down and Right keys are disabled in command mode. Use j, h, k, and l instead.
