" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" *********************** CHANGES MADE BY SOURAV ********************
" {

" Setting some decent VIM settings for programming 
"set ai                          " set auto-indenting on for programming
set hlsearch
set tabstop=4
set number
"set ai
set shiftwidth=4
set showmatch                   " automatically show matching brackets. work    s like it does in bbedit.
set novb                          " turn on the "visual bell" - which is much     quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two     lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it sh    ould
" set nocompatible                " vi compatible is LAME
set background=dark        	" Use colours that work well on a dark backg    round (Console is usually black)
set showmode                    " show the current mode
set clipboard=unnamedplus           
syntax enable
set softtabstop=4				" number of spaces in tab when editing
set guifont=Hack

set undofile
set undodir=~/.VimTemp/undo//
set undolevels=1000
set undoreload=1000

set backup
set backupdir=~/.VimTemp/backup//

set directory=~/.VimTemp/dir//


" }
" *********************** CHANGES MADE BY SOURAV ********************






" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

