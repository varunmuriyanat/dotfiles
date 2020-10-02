set number
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set incsearch
set wrap
set ignorecase
set virtualedit
set clipboard+=unnamedplus

:nnoremap \ :nohlsearch<CR> 
inoremap <tab> <C-t>
inoremap <S-tab> <C-d>

:nnoremap <F5> :buffers<CR>:buffer<Space>
