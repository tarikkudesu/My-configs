# My-vim-config

## Install VimPlug
before you start using this config you should install a plugin manager, VimPlug is the one i used

``` curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ```

after installing it, you can install pluging by adding the to the configuration file :

```
call plug#begin('~/.vim/plugged')

  " Specify your plugins here

call plug#end()
```

then run 
``` :PlugInstall  ```

## c auto complete plugin

I use coc, i requires a few dependencies that should be installed first (Node.js and npm), after that you can install the language server for c : clangd by runing
``` :CocInstall coc-clangd ```
