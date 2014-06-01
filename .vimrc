" Features
set nocompatible
filetype indent plugin on       " Inteligent indenting
sytanx on                       " Turns on syntax highlighting

" Must haves
set hidden
set wildmenu
set showcmd
set hlsearch
set nomodeline

" Usability
set ignorecase                  " Ignores the case when searching by default
set smartcase                   " If a letter is capitilized in a search, case sensitive
set backspace=indent,eol,start  " Makes backsapce behave as expected
set nostartofline               " Makes line movements more intuitive at times
set ruler                       " Displays cursor position
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouase=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200

" Indentation options
set shiftwidth=2
set softtabstop=2
set expandtab

" Mappings
noremap <C-L> :nohl<CR><C-L>