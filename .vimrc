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
set mouse=n
set path+=**

let g:netrw_banner=0         "disable the annoying banner
let g:netrw_browse_split=4   " open in prior window
let g:netrw_altv=1           " open splits to the right
let g:netrw_liststyle=3      " tree view

highlight ColorColumn ctermbg=darkgrey guibg=darkgrey 
highlight Search ctermbg=LightYellow
highlight Search ctermfg=Red 

nnoremap \ :nohlsearch<CR>
inoremap <tab> <C-t>
inoremap <S-tab> <C-d> 

nnoremap <Space> :

inoremap <c-u> <esc>viwUea

nnoremap <F1> :reg<CR> 
nnoremap <F2> q:
nnoremap <F3> q/

"get the full directory path of the current file
nnoremap <F4> :let @+ = expand("%:p:h")<cr>P
nnoremap <F5> :buffers<CR>:buffer<Space>

nnoremap <Backspace> <C-u>
nnoremap <Enter> <C-d>

" map arrows keys to scroll up/down
nnoremap <Up> <C-y>0 
nnoremap <Down> <C-e>0 

" map left/right arrows keys to jump to extreme left/right
nnoremap <Left> 0
nnoremap <Right> $ 

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
