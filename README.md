# My-config

## Note

You need to have oh-my-zsh installed

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/tarikkudesu/My-configs/refs/heads/main/alias.sh >> ~/.zshrc
source ~/.zshrc
```

## usage

```help```

## Install VimPlug
before you start using this config you should install a plugin manager, VimPlug is the one i used

``` curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ```

after installing it, you can install pluging by adding it to the configuration file :

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


# NERDTree Shortcuts

### Open/Close NERDTree
- `:NERDTreeToggle` — Toggle the NERDTree sidebar on or off.
- `:NERDTreeFocus` — Focus on the NERDTree window.
- `:NERDTreeFind` — Open NERDTree and focus on the current file.

### Navigation
- `h` — Navigate to the parent directory.
- `l` — Open the selected file or directory.
- `j` — Move down to the next item.
- `k` — Move up to the previous item.
- `gg` — Move to the first file in the directory.
- `G` — Move to the last file in the directory.
- `0` — Go to the top level of the tree (root directory).
- `P` — Open a preview of the selected file (if the preview option is enabled).

### File Operations
- `m` — Open the file management menu:
  - `a` — Add a new file.
  - `d` — Delete a file or directory.
  - `r` — Rename a file or directory.
  - `c` — Copy a file or directory.
  - `x` — Cut a file or directory.
  - `p` — Paste the file or directory.
  - `i` — Open the file in a new tab.

### Directory Operations
- `t` — Open the selected file in a new tab.
- `T` — Open the selected file in a new split window.
- `v` — Open the selected file in a vertical split.
- `V` — Open the selected file in a horizontal split.
- `u` — Navigate up to the parent directory (same as `h`).
- `C` — Close the NERDTree window.

### Miscellaneous
- `o` — Open the selected file in the current window.
- `O` — Open the selected directory in the current window.
- `R` — Refresh the NERDTree view.
- `q` — Close the NERDTree window.
- `?` — Display the help for NERDTree commands.

### Expanding/Collapsing Folders
- `Enter` — Expand the selected directory (same as `l`).
- `-` — Collapse the selected directory.

### Search Files
- `/` — Search for a file or folder within NERDTree.

