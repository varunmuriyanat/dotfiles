let mapleader = "-"

syntax on
colorscheme slate

set backspace=2
set clipboard=unnamedplus
set colorcolumn=
set expandtab

"set guifont=Droid_Sans_Mono_Slashed:h10:cANSI:qDRAFT
set guifont=Consolas:h9:l

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
set mouse=n

highlight ColorColumn ctermbg=darkgrey guibg=darkgrey 
highlight Search ctermbg=LightYellow
highlight Search ctermfg=Red 

nnoremap \ :nohlsearch<CR>
inoremap <tab> <C-t>
inoremap <S-tab> <C-d> 

"change variable names to upper case without leaving insert mode
inoremap <c-u> <esc>viwUea

"pull up registers
nnoremap <F1> :reg<CR> 

"show command history
nnoremap <F2> q:

"show search history
nnoremap <F3> q/

"get the full directory path of the current file
nnoremap <F4> :let @+ = expand("%:p:h")<cr>P

"list buffers
nnoremap <F5> :buffers<CR>:buffer<Space>

nnoremap <Backspace> <C-u>
nnoremap <Enter> <C-d>

"reusable paste
vnoremap <leader>p "_dP

"show marks
nnoremap <leader>m :marks<CR>

"search the highlighted text and pull up locallist window
vnoremap <leader>/ y/\V<C-R>=escape(@",'/\')<cr><cr>:lvimgrep // %<cr>:lopen<cr>

"open trigger lvimgrep and open locallist window
nnoremap <leader>ll :lvimgrep // %<cr>:lopen<cr>

"close locallist window
nnoremap <leader>lc :lclose<cr>


"surround highlighted text in double quotes
vnoremap <leader>" :<c-u>call SurroundDoublQuotes(visualmode())<cr>
function! SurroundDoublQuotes(type)
    let saved_unnamed_register = @@
    if a:type==# 'v'
        execute "normal! `<v`>yv`>c\"\<esc>pa\"\<esc>"
    endif

    let @@ = saved_unnamed_register
endfunction


"surround highlighted text in single quotes
vnoremap <leader>' :<c-u>call SurroundSingleQuotes(visualmode())<cr>
function! SurroundSingleQuotes(type)
    let saved_unnamed_register = @@
    if a:type==# 'v'
        execute "normal! `<v`>yv`>c\'\<esc>pa\'\<esc>"
    endif

    let @@ = saved_unnamed_register
endfunction
