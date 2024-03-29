vim.g.mapleader        = '-'
vim.g.netrw_banner     = 0
vim.g.netrw_winsize    = 30
vim.o.background       = 'light'
vim.opt.autoindent     = true
vim.opt.autowrite      = true 
vim.opt.expandtab      = true
vim.opt.ignorecase     = true
vim.opt.incsearch      = true
vim.opt.relativenumber = true
vim.opt.scrolloff      = 3
vim.opt.shiftwidth     = 4
vim.opt.softtabstop    = 4
vim.opt.splitright     = true
vim.opt.tabstop        = 4
vim.opt.wrap           = false

vim.cmd [[
    highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
    highlight Search ctermbg=LightYellow
    highlight Search ctermfg=Red
    set encoding=utf-8
    set fileencoding=utf-8
    set mouse=n
    set path+=**
    set vb t_vb=
    syntax enable
    set nocompatible
    set clipboard=unnamedplus
    set virtualedit=all
]]

vim.keymap.set('i', '<C-u>',       '<Esc>viwUea')
vim.keymap.set('i', '<S-tab>',     '<C-d>')
vim.keymap.set('i', '<tab>',       '<C-t>')
vim.keymap.set('n', '*',           '*zz', {desc = 'Search and center screen'})
vim.keymap.set('n', '<Backspace>', '<C-u>')
vim.keymap.set('n', '<C-Down>',    'ddp')
vim.keymap.set('n', '<C-Up>',      'ddkP')
vim.keymap.set('n', '<Enter>',     '<C-d>')
vim.keymap.set('n', '<F1>',        '<cmd>register<cr>')
vim.keymap.set('n', '<F2>',        'q:')
vim.keymap.set('n', '<F3>',        'q/')
vim.keymap.set('n', '<F5>',        ':buffers<CR>:buffer<Space>')
vim.keymap.set('n', '<Leader>f',   '<cmd>Lexplore<cr>')
vim.keymap.set('n', '<Leader>q',   '<cmd>q<cr>')
vim.keymap.set('n', '<Leader>w',   ':write<CR>')
vim.keymap.set('n', '<Space>',     ':')
vim.keymap.set('n', '\\',          ':nohlsearch<CR>')
vim.keymap.set('v', '<C-Down>',    'xp`[V`]')
vim.keymap.set('v', '<C-Up>',      'xkP`[V`]')

local install_path    = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    print('Installing packer..')
    local packer_url = 'https://github.com/wbthomason/packer.nvim'
    vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
    print('Done')

    vim.cmd('packadd packer.nvim')
    install_plugins = false
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Package manager
    use 'joshdick/onedark.vim'   -- Theme inspired by Atom
    use 'nvim-lualine/lualine.nvim'
    use 'neovim/nvim-lspconfig'  -- Configurations for Nvim LSP

    if install_plugins then
        require('packer').sync()
    end
end)

vim.opt.termguicolors = true
vim.cmd('colorscheme onedark')

require('lualine').setup()
require('lspconfig').pyright.setup{}
