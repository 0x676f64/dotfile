"curl fLO $HOME/.config/nvim/autoload/plug.vim --create-dirs \
" 	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

 call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree' 
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'srcery-colors/srcery-vim'
Plug 'sheerun/vim-polyglot'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'vim-airline/vim-airline' 
Plug 'itchyny/lightline.vim'
Plug 'hoob3rt/lualine.nvim'
Plug 'liuchengxu/vista.vim' 
Plug 'romgrk/barbar.nvim'
Plug 'lambdalisue/fern.vim'

call plug#end()

" Default colorscheme
    if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

   colorscheme spaceduck

  let g:airline_theme = 'spaceduck'

  let g:lightline = {
          \ 'colorscheme': 'spaceduck',
          \ }


" nerdtree
"let NERDTreeShowHidden = 1
let NERDTreeMinimalUI=1
autocmd BufEnter * if tabpagenr('$') == 1 
      \ && winnr('$') == 1 
      \ && exists('b:NERDTree') 
      \ && b:NERDTree.isTabTree()
      \ | quit | endif

  let g:lualine = {
      \ 'theme': 'spaceduck',
      \ } 

" vim-nerdtree-syntax-highlight
let g:NERDTreeHighlightFolders = 1

let g:NERDTreeHighlightFoldersFullName = 1

map <silent> <C-n> :NERDTreeFocus<CR>

filetype plugin indent on	" required 
syntax on
set number
set nowrap
set smartcase
set hlsearch
set noerrorbells
set expandtab
set smartindent 
set encoding=UTF-8
