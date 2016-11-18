let g:deoplete#enable_at_startup = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


nmap <F8> :TagbarToggle<CR>


"""""""""""""""""""""""
" indentation
"""""""""""""""""""""""
set autoindent                              " indentation automatique avancée
set smartindent                             " indentation plus intelligente
set ruler
set shiftwidth=2                            " nombre de tabulation pour l'indentation
set tabstop=2					            " nombre d'espace pour une tabulation
set expandtab

""""""""""""""""""""""""
" Map
""""""""""""""""""""""""

" esc pour terminal nvim
tnoremap <Esc> <C-\><C-n>

" numérotation des lignes
set number 

" numérotation des lignes
map ZZ :xa!<CR> 

""""""""""""""""""""""""
" ab
""""""""""""""""""""""""

ab nameab NAME_INSTALL
ab mailab MAIL_INSTALL

""""""""""""""""""""""""
" Plugin
""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'pearofducks/ansible-vim'

call plug#end()
