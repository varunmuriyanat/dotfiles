syntax on
colorscheme slate

set virtualedit=all
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set incsearch
set expandtab
set nowrap
set ignorecase 
set clipboard=unnamedplus
set colorcolumn=
set linebreak

set statusline=%f     
set statusline+=\:    
set statusline+=%l    
set statusline+=\/   
set statusline+=%L    
set statusline+=,col:\%c

highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

set hlsearch
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

set t_Co=256
set t_ut=


set guifont=Droid_Sans_Mono_Slashed:h10:cANSI:qDRAFT
set backspace=2
set hlsearch
set vb t_vb=

set shortmess-=S

