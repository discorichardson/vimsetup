" Make sure we're not TOO old school
set nocompatible

" If I'm using Pathogen I need to turn filetype off for a sec
filetype off

" Use Pathogen
execute pathogen#infect()
" reminder use :Helptags capital h to load help for pathogen installed
" modules

" Make sure we load language specific settings
filetype plugin indent on
syntax enable

autocmd BufRead,BufNewFile *.csp set filetype=javascript
autocmd BufRead,BufNewFile *.bas set filetype=vb
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Code folding
set foldmethod=indent
set foldlevelstart=99

" Encoding
set encoding=utf-8

if has("gui_running")
	" GVIM specific changes
	" Colour Scheme
	"colorscheme solarized
	"let g:solarized_contrast="high"
	"let g:solarized_visibility="high"

	" No toolbar
	set guioptions-=T
	" Use non gui tabs
	set guioptions-=e
	" No Menu!
	set guioptions-=m
	" No Scrollbars
	set guioptions-=r
	set guioptions-=L

	" Windows specific hacks
	if has("win32")
		" Set Font
		set gfn=Source_Code_Pro:h9:cANSI
		" Maximise window
		"au GUIEnter * simalt ~x
		" Better yet allow me to maximise the window if I want
		" Only works if menu is visible though :(
		"set guioptions+=m
		"set winaltkeys=yes
	endif
else
	" Terminal specific features
	"colorscheme blue
endif

colorscheme solarized
let g:solarized_contrast="high"
let g:solarized_visibility="high"

" I always pick a dark colour scheme and have a dark terminal
set background=dark

" use unix grep
"set grepprg=grep\ -nH

" Show Numbers and highlight where we are
set number
set relativenumber
set ruler
set cursorline
set nocursorcolumn
set showcmd
set laststatus=2

" Don't use modelines
set modelines=0

" Keep the cursor away from very top and bottom
set scrolloff=3

" Use external settings files
"set exrc
"set secure " But be careful about it

" set no line wrapping and only insert line breaks when I say so!
set nowrap
set linebreak
set textwidth=0
set wrapmargin=0

" allow backspace past everything
set backspace=indent,eol,start

" Shut up!
set noerrorbells
set visualbell

" remap j and k to work sensibly with wrapped lines
" Don't do this as messes up relative jumps
"nnoremap j gj
"nnoremap k gk

" Add recursive filename completion
set path+=**
set wildmenu

" Improve search and replace
set ignorecase
set smartcase
set hlsearch
set incsearch
"set gdefault

" Hide buffers rather than close (allows switching without saving)
set hidden

" don't write backups (I'm going to keep using swap files though
set nobackup
set nowritebackup

" Set to auto read when a file is changed from the outside
set autoread

" Add default indentation
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smarttab

" Show white space
" set listchars=eol:#,tab:>\ ,trail:~
set showbreak=\\\ 
set nolist

" Don't redraw while executing macros (good performance config)
set lazyredraw

"" netrw settings
"let g:netrw_banner = 0
"let g:netrw_browse_split = 0
""let g:netrw_winsize = 20

" set spelling language
set spelllang=en_gb

" remove ` from list of auto complete chars, Mainly for benefit of mark down
" which is about the only place I've seen it used!
let g:AutoClosePairs_del = "`"

" Use arrow keys to go through screen lines
nnoremap <up> gk
nnoremap <down> gj

" Better navigation between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" edit at the speed of thought
" don't do this as stops me from being able to type : or ; (in my head)
"nnoremap ; :
"nnoremap : ;
" don't do this as it looks annoying
"inoremap jj <Esc>
"inoremap ;; <Esc>

" Copy, Cut and Paste to/from system clipboard
vnoremap <C-c> "+y<ESC>
vnoremap <C-x> "+d
vnoremap <C-v> c<ESC>"+p
inoremap <C-v> <ESC>"+pa
" This one is the best, copy from system clipboard to the ex prompt
cnoremap <C-v> <C-r>+

" I'm the leader, I'm the leader, I'm the leader of the gang I am!
let mapleader=","

" Arrange these alphabetically so I don't cause any annoying pauses

" select All then Put from system clip board over everything
nnoremap <leader>ap ggVG"+p
" select All then Yank to system clip board and then go back to original position
nnoremap <leader>ay mxggVG"+y`x:delmarks x<CR>

" list Buffers, then ready for user selection
nnoremap <leader>b :ls<CR>:b<Space>

" Change Directory to that of the current buffer
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" Change directory to the Home folder
nnoremap <leader>ch :cd ~<CR>:pwd<CR>
" generate CTags. still have to press enter, hopefully I'll think before running it that way
"nnoremap <leader>ct :!ctags -R --exclude=.git

" Delete current buffer and close window
nnoremap <leader>d :bdelete<CR>
nnoremap <leader>D :bdelete!

if has("win32")
	" Grep Recursively (case insensitive) on windows
	nnoremap <leader>gr :grep /S /I  *.*<Left><Left><Left><Left>
	" Grep current folder (case insensitive) on windows
	nnoremap <leader>g. :grep /I  *.*<Left><Left><Left><Left>
endif
if has("unix")
	" Grep Recursively (case insensitive) on unix
	nnoremap <leader>gr :grep -rI  *<Left><Left>
	" Grep current folder (case insensitive) on unix
	nnoremap <leader>g. :grep -i  *<Left><Left>
endif

" Clear search Highlight
nnoremap <leader>h :nohlsearch<CR>

" Reminder that <leader>ig toggles indent guides

" list Marks
nnoremap <leader>m :marks<CR>

" New Buffer
nnoremap <leader>nb :enew<CR>
" New Tab
nnoremap <leader>nt :tabnew<CR>

" These fail if filename has a space in it
" Pandoc Html
nnoremap <leader>ph :w<CR>:cd %:p:h<CR>:!pandoc % -s -o %:r.html<CR><CR>
" Pandoc Docx
nnoremap <leader>pd :w<CR>:cd %:p:h<CR>:!pandoc % -o %:r.docx<CR><CR>
" Pandoc odT
nnoremap <leader>pt :w<CR>:cd %:p:h<CR>:!pandoc % -o %:r.odt<CR><CR>

" Quit
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!

" Search and Replace
nnoremap <leader>sr :%s:::g<Left><Left><Left>
" Search TODO and FIXME lines
nnoremap <leader>st /TODO\\|FIXME<CR>

" Toggle Autoread
nnoremap <leader>ta :set autoread!<CR>:set autoread?<CR>
" Toggle Background
nnoremap <leader>tb :let &background = ( &background == "dark"? "light" : "dark" )<CR>
" Toggle Column visibility
nnoremap <leader>tc :set cursorcolumn!<CR>:set cursorcolumn?<CR>
" Toggle List
nnoremap <leader>tl :set list!<CR>:set list?<CR>
" Toggle between relative Numbering and sequential numbering
nnoremap <leader>tn :set relativenumber!<CR>:set relativenumber?<CR>
" Toggle Paste
nnoremap <leader>tp :set paste!<CR>:set paste?<CR>
" Toggle Spelling
nnoremap <leader>ts :set spell!<CR>:set spell?<CR>
" Toggle Tagbar
nnoremap <leader>tt :TagbarToggle<CR>
" Toggle Wrap
nnoremap <leader>tw :set wrap!<CR>:set wrap?<CR>

" Vimrc Edit
nnoremap <leader>ve :e $MYVIMRC<CR>
" Vimrc Source (Assumes we're editing vimrc so does a write first)
nnoremap <leader>vs :w<CR>:so $MYVIMRC<CR>

" Write file
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>

" eXplore
"nnoremap <leader>x :Explore<CR>
nnoremap <leader>x :NERDTreeToggle<CR>

" Previous buffer, next tab
nnoremap <leader>, :bNext<CR>
nnoremap <leader>. :tabnext<CR>

" Toggle folds
nnoremap <leader><Space> za

" Alt Remaps in insert mode - I'll be interested to see if I actually use these.
" hjkl
"inoremap <A-h> <Esc>i
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>a
" end
inoremap <A-e> <C-o>e<C-o>a
inoremap <A-E> <C-o>E<C-o>a
" word
inoremap <A-w> <C-o>w
inoremap <A-W> <C-o>W
" back a word
inoremap <A-b> <C-o>b
inoremap <A-B> <C-o>B
" start of line
inoremap <A-i> <C-o>I
" end of line
inoremap <A-a> <C-o>A
