"start maximised
au GUIEnter * simalt ~x

syntax on
colorscheme slate
set number

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set incsearch
set wrap
set ignorecase
set virtualedit=all
set clipboard+=unnamedplus
set guifont=Droid_Sans_Mono_Slashed:h10:cANSI:qDRAFT
set backspace=2
set hlsearch

set colorcolumn=120
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey


:nnoremap \ :nohlsearch<CR> 
inoremap <tab> <C-t>
inoremap <S-tab> <C-d>

" Vim's default behavior
if &compatible
  set nocompatible
endif

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction


source $VIMRUNTIME/mswin.vim
behave mswin
