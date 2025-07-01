"==========================================
"     _     _   _  _    _   __     ___
"     \\   //  /| |\\  //| || \\  // \\
"      \\ //   || ||\\//|| ||==  ||
"     o \v/    || ||    || || \\  \\_//
"==========================================

"------------------------
" ---GLOBAL COMMANDS--- "
"------------------------

"Calls plug, the plugin manager. To install new plugins, just add the URL after the Plug call, run :so ~/.vimrc, and run <:PlugInstall>
	let g:tex_flavor='latex'
"	set conceallevel=2
"	let g:tex_conceal='abdgm'
"	let g:vimtex_view_method='Zathura'
"	let g:vimtex_quickfix_mode=0

"Enables syntax to be read from the syntax folder in ~/.vim/syntax/
	filetype plugin indent on
	syntax on

" show existing tab with 4 spaces width
	set tabstop=4
" when indenting with '>', use 4 spaces width
	set shiftwidth=4
" On pressing tab, insert 4 spaces
	set expandtab
" delete 4 spaces on backspace
    set softtabstop=4

"makes the given character into the call character refered to as <leader> in all remaps
	let mapleader = ";"

"sets the line number on the cursor's line, and shows lines 'away' from cursor's line
	set number relativenumber
        map <leader>n :set<space>number!<space>relativenumber!<Return>

"Enables autocomplete for buffer commands:
	set wildmode=longest,list,full

"Use ;s in normal mode to toggle spelling check
	map <leader>sc :setlocal spell! spelllang=en_us<CR>

"delete trailing whitespace
	autocmd BufWritePre * %s/\s\+$//e

" Disables automatic commenting on newline
 	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Insert placeholder character after cursor
	map <leader>p <Esc>a<++><Esc>4h
        map <leader>c :set<Space>cc=

"Find and delete placeholder character
	map <Space><Space> <Esc>/<++><Enter>"_c4l

"Set default colorscheme
"	highlight Normal guibg=black guifg=white
	colo desert
	set background=dark

" Stop the annoying ass bell when hitting escape in normal mode
set noerrorbells visualbell t_vb=

" highlight active search terms
set is hlsearch

" Make sure markdown files have syntax highlighting
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"-------------------------
" ---FILETYPE SNIPPETS---"
"-------------------------

"  --.cpp--
"  --.h--
" create an if statement with jump characters
	autocmd FileType cpp nnoremap <leader>if <return>iif(<++>)<return>{<return>}<return><Esc>kko<++><Esc>kkbb
	autocmd FileType h nnoremap <leader>if <return>iif(<++>)<return>{<return>}<return><Esc>kko<++><Esc>kkbb
" create a while loop with jump characters
	autocmd FileType cpp nnoremap <leader>while <return>iwhile(<++>)<return>{<return>}<return><Esc>kko<++><Esc>kkbb
	autocmd FileType h nnoremap <leader>while <return>iwhile(<++>)<return>{<return>}<return><Esc>kko<++><Esc>kkbb
" create a do-while loop with jump characters
	autocmd FileType cpp nnoremap <leader>dowhile <return>ido<return>{<return>}<return>while(<++>);<return><Esc>kkko<++><Esc>kkb
	autocmd FileType h nnoremap <leader>dowhile <return>ido<return>{<return>}<return>while(<++>);<return><Esc>kkko<++><Esc>kkb
" create a for loop with jump characters
	autocmd FileType cpp nnoremap <leader>for <return>ifor( <++> ; <++> ; <++> )<return>{<return>}<return><Esc>kko<++><Esc>kkbbbb
	autocmd FileType h nnoremap <leader>for <return>ifor( <++> ; <++> ; <++> )<return>{<return>}<return><Esc>kko<++><Esc>kkbbbb
" comment current line and return to next line
	autocmd FileType cpp nnoremap <leader>c 0i//<Esc>j
	autocmd FileType h nnoremap <leader>c 0i//<Esc>j

"  --.py--
	autocmd FileType py nnoremap <leader>c 0i#<Esc>j

"  --.tex--

" create a new item entry
	autocmd FileType tex nnoremap <leader>li o\item{}<Esc>i
" create a new subitem entry
	autocmd FileType tex nnoremap <leader>si o\subitem{$\triangleright$ }<Esc>i
" bring up bib file immediately in sp environment
	autocmd FileType tex nnoremap <leader>bib :set splitbelow <bar> :sp<space>~/Documents/UAH.bib<CR>
" create figure environment
	autocmd FileType tex nnoremap <leader>fig o\begin{figure}[h]<return>\includegraphics[width=\linewidth]{./figures/<++>}<return>\caption{<++>}<return>\label{<++>}<space>%(to<space>reference<space>in<space>the<space>future<space>text)<return>\end{figure}<return><esc>05k
" create equation environment
	autocmd FileType tex nnoremap <leader>eq o\begin{equation}<return><++><return>\label{<++>}<return>\end{equation}<return><Esc>4k
" create fraction (assumes in equation environment)
	autocmd FileType tex nnoremap <leader>frac a\frac{<++>}{<++>}<Esc>17h
" create integral (assumes in equation environment)
	autocmd FileType tex nnoremap <leader>int a\int_{<++>}^{<++>}<Esc>18h
" create limit (assumes in equation environment)
	autocmd FileType tex nnoremap <leader>lm a\lim\limits_{<++>\to<++>}<Esc>25h
" create theorem environment with leader'd keyword
	autocmd FileType tex nnoremap <leader>th <return>a\noindent<return>\boxed{<return>\begin{minipage}{.15\textwidth}<return>\textsc{<++>}<return>\end{minipage}<return>\vline<return>\hspace{0.1\textwidth}<return>\begin{minipage}{.31\textwidth}<return>\footnotesize<return><++><return>\end{minipage}<return><tab>}<esc>12k0

" --.html--

	au BufRead,BufNewFile *.html set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
	autocmd Filetype html nnoremap <leader>c o<!--<space><++><space>--><Esc>k
