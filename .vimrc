let mapleader = " "

call plug#begin('~/.vim/plugged')

Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

set termguicolors

let g:tokyonight_style = 'night'        " options: 'night', 'storm'
let g:tokyonight_enable_italic = 1       " makes syntax keywords italic
let g:tokyonight_transparent_background = 1  " set to 1 if you want transparency

let g:asyncomplete_auto_popup = 1
set completeopt=menuone,longest,preview

let g:formatdef_java_google = '"google-java-format --aosp -"'
let g:formatters_java = ['java_google']

let g:formatdef_prettier = '"prettier --stdin-filepath " . expand("%:p")'
let g:formatters_typescript = ['prettier']
let g:formatters_typescriptreact = ['prettier']
let g:formatters_javascript = ['prettier']
let g:formatters_javascriptreact = ['prettier']

let g:ale_linters = {
\   'typescript': ['tsserver', 'eslint'],
\   'typescriptreact': ['tsserver', 'eslint'],
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\}
let g:ale_fixers = {
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\}
let g:ale_fix_on_save = 1

let g:lsp_settings = {
\ 'tailwindcss': {
\   'cmd': ['tailwindcss-language-server', '--stdio'],
\   'whitelist': ['javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'html', 'css']
\ }}

syntax on
colorscheme tokyonight
set number
set cursorline
set showmatch
set tabstop=4 shiftwidth=4 expandtab
nnoremap <C-n> :NERDTreeToggle<CR>

function! ToggleNERDTreeFocus()
  if bufname('%') =~# 'NERD_tree_'
    wincmd p
  else
    NERDTreeFocus
  endif
endfunction

nnoremap <leader>t :call ToggleNERDTreeFocus()<CR>

nnoremap <silent> gd :LspDefinition<CR>
nnoremap <silent> gr :LspReferences<CR>
nnoremap <silent> rn :LspRename<CR>
nnoremap <silent> K :LspHover<CR>

nnoremap <leader>f :Autoformat<CR>

