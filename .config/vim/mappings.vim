imap    ii      <Esc>
nmap     <C-h>  <C-w>h
nmap     <C-j>  <C-w>j
nmap     <C-k>  <C-w>k
nmap     <C-l>  <C-w>l

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

map  <Leader>sw :set wrap!<CR><CR>
nmap <Leader>ee :Explore<CR>
nmap <Leader>eq :Rexplore<CR>
nmap <Leader>ev :Vexplore! %:p:h<CR>

"=== LATEX ==="
:autocmd FileType tex map <LocalLeader>c :w<CR>:! pdflatex  % && pkill -HUP mupdf<CR><CR>
:autocmd FileType tex map <LocalLeader>o :! mupdf $(echo % \|sed 's/tex$/pdf/') & disown<CR><CR>
:autocmd FileType tex map <LocalLeader>tb i\textbf{}<Esc>T{i
:autocmd FileType tex map <LocalLeader>ti i\textit{}<Esc>T{i
:autocmd FileType tex map <LocalLeader>ts i\begin{}<CR><CR>\end{}<Esc>kk$T{i
:autocmd FileType tex nnoremap <silent> <localleader> :<c-u>WhichKey  '\'<CR>

"Preamble
:autocmd FileType tex imap ;use     \usepackage{}<Esc>T{i
:autocmd FileType tex imap ;class   \documentclass{}<Esc>T{i
:autocmd FileType tex imap ;report  \documentclass[12pt, a4paper, fleqn]{report}<Esc>
:autocmd FileType tex imap ;cmd     \newcommand{}{}<Esc>hhi

"Body
:autocmd FileType tex imap ;bg      \begin{}<CR><CR>\end{}<Esc>kk$T{i
:autocmd FileType tex imap ;bt      \textbf{}<Esc>T{i
:autocmd FileType tex imap ;it      \textit{}<Esc>T{i
:autocmd FileType tex imap ;sbt     \textsubscript{}<Esc>T{i
:autocmd FileType tex imap ;spt     \textsuperscript{}<Esc>T{i

"Headings
:autocmd FileType tex imap ;chp     \chapter{}<Esc>T{i
:autocmd FileType tex imap ;sec     \section{}<Esc>T{i
:autocmd FileType tex imap ;ssec    \subsection{}<Esc>T{i
:autocmd FileType tex imap ;Ssec    \subsubsection{}<Esc>T{i
