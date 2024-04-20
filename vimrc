set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set mouse=a
set number
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

filetype plugin indent on
syntax on

set t_Co=256

" True color if available
let term_program=$TERM_PROGRAM

" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif

" File browser
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_browse_split=2
let g:netrw_altv=0
let g:netrw_winsize=75
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'


" Create file without opening buffer
function! CreateInPreview()
  let l:filename = input('please enter filename: ')
  execute 'silent !touch ' . b:netrw_curdir.'/'.l:filename
  redraw!
endfunction

" Netrw: create file using touch instead of opening a buffer
function! Netrw_mappings()
  noremap <buffer>% :call CreateInPreview()<cr>
endfunction

augroup auto_commands
    autocmd filetype netrw call Netrw_mappings()
augroup END

call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " Git
    Plug 'airblade/vim-gitgutter'

    " Search
    Plug 'ctrlpvim/ctrlp.vim'

    " Buffers
    Plug 'ap/vim-buftabline'

    " ColorScheme
    Plug 'morhetz/gruvbox'

    " Comments
    Plug 'tpope/vim-commentary'

    Plug '907th/vim-auto-save'

    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruvbox

" Normal mode remappings
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <Space>n :NERDTreeToggle<CR>
nnoremap <F6> :sp<CR>:terminal<CR>

" search for files
nnoremap <Space>p :CtrlP<CR>

" Map Tab to switch to the next buffer
nnoremap <Space>l :bnext<CR>

" Map Shift+Tab to switch to the previous buffer
nnoremap <Space>h :bprev<CR>

nnoremap <Space>v :vsp<CR>

" switch between vertical splits
nnoremap <Space>k <C-W>l
nnoremap <Space>j <C-W>h

" Tabs
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

" Use CoC with Vim
set rtp+=~/.vim/plugged/coc.nvim

" Enable CoC for C/C++ files
autocmd FileType c,cpp silent! call CocStart()

" Use clangd as the language server for C/C++
let g:coc_global_extensions = ['coc-clangd']

" Define key mappings for CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)

" Use <Tab> to navigate forward through completion options
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Use <Shift-Tab> to navigate backward through completion options
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
