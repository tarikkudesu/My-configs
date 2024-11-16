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

I use coc, it requires a few dependencies that should be installed first (Node.js and npm), after that you can install the language server for c (clangd) by running :
``` :CocInstall coc-clangd ```

Normal Mode Shortcuts
`<C-q>`: Quit Vim without saving (:q!)
`<F4>`: Close the current buffer (:bd)
`<Space>n`: Toggle NERDTree file explorer (:NERDTreeToggle)
`<F6>`: Split window and open a terminal (:sp<CR>:terminal<CR>)
`<Space>p`: Open file search with CtrlP (:CtrlP)
`<Space>l`: Switch to the next buffer (:bnext)
`<Space>h`: Switch to the previous buffer (:bprev)
`<Space>v`: Open vertical split (:vsp)
`<Space>k`: Switch to the split window to the right (<C-W>l)
`<Space>j`: Switch to the split window to the left (<C-W>h)
Tab Shortcuts
`<S-Tab>`: Switch to the previous tab (gT)
`<Tab>`: Switch to the next tab (gt)
`<S-t>`: Open a new tab (:tabnew)
CoC (Conquer of Completion) Mappings for C/C++
`<silent> gd`: Go to definition (<Plug>(coc-definition))
`<silent> gy`: Go to type definition (<Plug>(coc-type-definition))
`<silent> gi`: Go to implementation (<Plug>(coc-implementation))
Completion Navigation
`<Tab>`: Navigate forward in completion options (when visible)
`<S-Tab>`: Navigate backward in completion options (when visible)

