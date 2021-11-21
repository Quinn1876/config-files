:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set syntax=on

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status bar at the bottom
Plug 'https://github.com/preservim/nerdtree' " File Explorer
Plug 'https://github.com/tpope/vim-surround' " Surround text with cst, replace surround with cs<old><new>
Plug 'https://github.com/tpope/vim-commentary' " Commet lines with gcc and gc + visual mode
Plug 'https://github.com/ryanoasis/vim-devicons'

Plug 'https://github.com/tc50cal/vim-terminal' " Use a terminal in Vim with :Terminal <command here>

Plug 'https://github.com/preservim/tagbar'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

call plug#end()


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>

" Plugin Config Files
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/lua/lsp/lsp-config.lua

" Language Servers
luafile ~/.config/nvim/lua/lsp/python-ls.lua
luafile ~/.config/nvim/lua/lsp/java-ls.lua

