vimrc
=====

The following repository is created to follow the changes in my vimrc configuration.

## Vim Setup

1- First, you should install Vim (if it's not already installed). This configuration file is made to work with Vim (and not gVim or Vi).

2- Second, you should install vundle the package manager of choice. After creating the required directories, run the following command

```
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

3- You should install the Exuberant Ctags module for the TagBar to work properly. Get the URL of the last package from `http://ctags.sourceforge.net/`

```
rpm -Uvh http://prdownloads.sourceforge.net/ctags/ctags-5.8-1.i386.rpm
```

3- Last, run the following command in Vim to install the vundle packages.

```
$ BundleInstall
```
