let loaded_matchparen = 1
set background=dark
" Following does only one space for joining sentences with 'J' command.
set nojoinspaces
" :colorscheme mine
:hi Search term=reverse ctermfg=7 ctermbg=3
function! SearchWord(word)
    let @/ = '\<' . a:word . '\>'
    normal n
endfunction
command! -nargs=1 SearchWord call SearchWord(<f-args>)
nmap ? :SearchWord

" the following is probably best for my Python stuff
" Note that it leaves existing tabs characters as is.
set expandtab           " enter spaces when tab is pressed
set softtabstop=4       " number of spaces to represent tab
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

syntax off

" for pairing:
:set number
syntax on

" au BufNewFile,BufRead *.js,*.javascript,*.es,*.jsx,*.mjs,*.ts   setf javascript

" :hi Search
" Search         xxx term=reverse ctermfg=7 ctermbg=3 guifg=Black guibg=Yellow
" Press ENTER or type command to continue
" :hi Search ctermfg=0 ctermbg=7
" :hi Search term=normal ctermfg=0 ctermbg=7
" :set hls

" 0 black
" 1 red
" 2 green
" 3 yellow
" 4 blue
" 5 magenta
" 6 cyan
" 7 white

function SetTabs()
  if &filetype == 'make' || &filetype == 'calendar'
    set shiftwidth=8 tabstop=8 noexpandtab
  elseif &filetype == 'javascript' || &filetype == 'html' || &filetype == 'ts' || &filetype == 'scss' || &filetype == 'css'
    set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  else
    set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  endif
endfunction

autocmd BufRead,BufEnter * call SetTabs()

" highlight searches on Mac
:set hls
:hi Search ctermfg=0 ctermbg=3 

:set incsearch
:set ruler
