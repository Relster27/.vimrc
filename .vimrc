" Line Number just like on the left side
set number relativenumber

" Wrap strings so when full it goes to the next line (visually)
set wrap

" Status bar
set laststatus=2

" Freely click anywhere on file using mouse
set mouse=a

" Highlight words when searching
set hlsearch

" CUSTOM START "
" Normal mode: Move current line up or down
nnoremap <A-Up>   :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
" Insert mode: Move current line up or down
inoremap <A-Up>   <Esc>:m .-2<CR>==gi
inoremap <A-Down> <Esc>:m .+1<CR>==gi
" Visual mode: Move selected lines up or down
vnoremap <A-Up>   :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv

" Ctrl+backspace and Ctrl+Del (same as in vscode)
"inoremap <C-BS> <C-W>  " <--- This doesn't work idk why
inoremap <C-Del> <C-O>dw

" Man page
runtime! ftplugin/man.vim " <--- Command must be 'Man' not 'man'
" CUSTOM END "

let g:coc_node_path = '/usr/bin/node'

call plug#begin('~/.vim/plugged')
" Theme/Colorscheme
" Link : https://github.com/wadackel/vim-dogrun
Plug 'wadackel/vim-dogrun'
" Link : https://github.com/KeitaNakamura/neodark.vim
Plug 'KeitaNakamura/neodark.vim'
" Link : https://github.com/liuchengxu/space-vim-dark
Plug 'liuchengxu/space-vim-dark'
" Link : ChatGPT
Plug 'tomasiser/vim-code-dark'

" Plug 'sheerun/vim-polyglot'
Plug 'sheerun/vim-polyglot'

" Autocomplete??
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Ctrl+D-like feature (same as in vscode)
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Dynamic/smart search Highlighting (same as Ctrl+F)
Plug 'romainl/vim-cool'
call plug#end()

" Use Tab for autocompletion
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<Tab>"

" Use Enter to confirm selection
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

set termguicolors
syntax on
colorscheme vimvscode
