call pathogen#infect()
call pathogen#helptags()

" Syntax Highlighting
if has("syntax")
    syntax on
endif

color dracula
hi Normal ctermbg=none

" 검색어 강조
set hlsearch

" set indent
set smartindent

" 라인 표기
set number

" tab, shift를 2칸으로
set shiftwidth=2
set tabstop=2

" tab 대신 띄어쓰기
set expandtab

" 제목 표시
set title

" 매칭되는 괄호 표시
set showmatch

" 검색시 하이라이트
set hlsearch

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" hi Normal guibg=NONE ctermbg=NONE
