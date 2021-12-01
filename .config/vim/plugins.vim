call plug#begin('~/.config/vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-surround'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"==================================================
"vim-which-key
"==================================================
call which_key#register('<Space>', "g:which_key_map")
let g:which_key_map =  {}

let g:which_key_map.s =  {
            \'name' : 'Set',
            \'w'    : 'Toggle word wrap',
            \}

let g:which_key_map.e =  {
            \'name' : 'Explore',
            \'e'    : 'Explore dir of current file',
            \'q'    : 'Back to file',
            \'v'    : 'Open new explore & file',
            \}

call which_key#register('\', "g:which_key_maplocal")
let g:which_key_maplocal =  {
            \'name' : 'LaTeX',
            \'c'    : 'Compile .tex',
            \'o'    : 'Open PDF viewer',
            \'i'    : 'Italic',
            \'b'    : 'Bold',
            \}

"==================================================
"coc
"==================================================
autocmd FileType json syntax match Comment +\/\/.\+$+

:autocmd FileType tex inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
:autocmd FileType tex inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

:autocmd FileType tex inoremap <silent><expr> <S-CR> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
