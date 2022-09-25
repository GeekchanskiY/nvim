syntax on
call plug#begin('~/.vim/plugged')
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'roxma/nvim-yarp', { 'do': 'pip install -r requirements.txt' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

let g:python3_host_prog = '~/.virtualenvs/env/bin/python3'
let g:python_host_prog = '~/.virtualenvs/env/bin/python'

filetype indent on
set foldmethod=marker
set fileformat=unix
set shortmess+=c
set mouse=a  " change cursor per mode
set number  " always show current line number
set smartcase  " better case-sensitivity when searching
set wrapscan  " begin search from top of file when nothing is found anymore

set expandtab
set tabstop=4
set shiftwidth=4
set fillchars+=vert:\  " remove chars from seperators
set softtabstop=4

set history=1000  " remember more commands and search history

set nobackup  " no backup or swap file, live dangerously
set noswapfile  " swap files give annoying warning

" coc

set signcolumn=yes
" <Tab>: completion
inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-N>" :
    \ coc#refresh()
" <S-Tab>: completion back
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"
" <CR>: confirm completion, or insert <CR>
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"


" NerdTree
nnoremap <f2> :NERDTreeToggle<CR>

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
