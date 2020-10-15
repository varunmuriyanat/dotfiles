# make this change in .bashrc
# set the caps lock as ctrl
# setxkbmap -option caps:ctrl_modifier

# tell vim to load my personal .vimrc file while sudo
alias svim='sudo vim -u ~/.vimrc'


set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set incsearch
set expandtab
set wrap
set smartcase
set clipboard=unnamedplus
set colorcolumn=80
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

nmap <F1> <nop>
map <F1> :h 
imap <F1> <nop>
imap <F1> <C-r>+

nnoremap <F2> :reg<CR>
nnoremap <F3> q:
nnoremap <F5> :buffers<CR>:buffer<Space>

nnoremap <Backspace> <C-u>
nnoremap <Enter> <C-d>

set t_Co=256
set t_ut=





