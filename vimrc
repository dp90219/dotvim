set ic
set autoindent
set number
set ts=4
set dictionary+=/usr/share/dict/words
"Pressing ,ss will toggle and untoggle spell checking
map ,ss : setlocal spell<cr>
filetype plugin on
ia xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
ia myname <c-r>%<cr>

function! Browser()
	let line = getline(".")
	exec "!firefox ".line
endfunction
map ,w : call Browser()<cr>
imap jj  <esc>
autocmd BufWritePost ~/ccode/* !ctags -f ~/ccode/tags ~/ccode/*

call pathogen#infect()
syntax on
filetype plugin indent on
