let mapleader = "-"

syntax on
colorscheme slate

set backspace=2
set clipboard=unnamedplus
set colorcolumn=
set expandtab
set guifont=Droid_Sans_Mono_Slashed:h10:cANSI:qDRAFT
set hlsearch
set ignorecase 
set incsearch
set linebreak 
set nowrap
set relativenumber
set shiftwidth=4
set shortmess-=S 
set softtabstop=4 
set t_Co=256
set t_ut= 
set tabstop=4
set vb t_vb= 
set virtualedit=all

set statusline=%f     
set statusline+=\:    
set statusline+=%l    
set statusline+=\/   
set statusline+=%L    
set statusline+=,col:\%c

highlight ColorColumn ctermbg=darkgrey guibg=darkgrey 
highlight Search ctermbg=LightYellow
highlight Search ctermfg=Red 

nnoremap \ :nohlsearch<CR>
inoremap <tab> <C-t>
inoremap <S-tab> <C-d> 

nnoremap <Space> :
nnoremap - $

inoremap <c-u> <esc>viwUea

nnoremap <F1> :reg<CR> 
nnoremap <F2> q:
nnoremap <F3> q/
nnoremap <F5> :buffers<CR>:buffer<Space>

nnoremap <Backspace> <C-u>
nnoremap <Enter> <C-d>

vnoremap <leader>p "_dP
