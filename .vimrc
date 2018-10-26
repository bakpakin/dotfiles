set nocompatible

filetype off

call plug#begin('~/.vim/plugged')
Plug 'bakpakin/ats2.vim'
Plug 'bakpakin/janet.vim'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
call plug#end()

filetype plugin indent on
syntax on

imap <C-S> <Esc>:w<CR>i
nmap <C-S> :w<CR>

" Alias spelling
command Spell setlocal spell spelllang=en_us
command StripWhitespace %s/\s\+$//e

" Leader
nmap <leader>ww :let @/ = ""<CR>
nmap <leader>v :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>
nmap <leader>h :help<CR>

" Colors
colorscheme molokai
highlight Comment ctermfg=DarkGray

" Basic Vim Setup
set mouse=a
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set copyindent
set number
set backspace=2
set formatprg=
set cindent
set scroll=1
set scrolloff=1
set nobackup
set noswapfile
set visualbell
set vb t_vb=

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

" Window Navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Buffer navigation
nnoremap <C-n>  :bp<CR>
nnoremap <C-m> :bn<CR>
nnoremap <S-Esc> :BW<CR>
nnoremap <C-Esc> :bw<CR>

" Whitespace prefs
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype vue setlocal ts=2 sts=2 sw=2

"""
""" Plugin Configs
"""

" fzf.vim {{
augroup fzf_config
  autocmd!
  map <C-P> :FZF!<CR>
augroup END
" }}}

" Nerdtree {{{
augroup nerdtree_config
  autocmd!
  map <leader>p :NERDTreeToggle<CR>
  map <leader>o :NERDTree<CR>
augroup END
" }}}


" Rainbow {{{
augroup rainbow_config
  autocmd!
  let g:rainbow_active = 1 
  nnoremap <leader>rp :RainbowToggle<CR>
augroup END
" }}}

" Syntastic.vim {{{
augroup syntastic_config
  autocmd!
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
augroup END
" }}}

