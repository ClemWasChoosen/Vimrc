


"                  .                                                      .
"                .n                   .                 .                  n.
"          .   .dP                  dP                   9b                 9b.    .
"          4    qXb         .       dX                     Xb       .        dXp     t
"          dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
"          9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
"          9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
"          `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
"            `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'
"                ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
"                                )b.  .dbo.dP'`v'`9b.odb.  .dX(
"                              ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
"                             dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
"                            dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
"                            9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
"                             `'      9XXXXXX(   )XXXXXXP      `'
"                                      XXXX X.`v'.X XXXX
"                                      XP^X'`b   d'`X^XX
"                                      X. 9  `   '  P )X
"                                      `b  `       '  d'
"                                       `             '
"			 _____  
"			|  ___| 
"			| |     
"			| |     
"			| |___  
"			\_____| 
"



" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

set encoding=UTF-8

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set tabstop=2
set shiftwidth=2
set number relativenumber
set nowrap

call plug#begin()
	"NERDTree
  Plug 'preservim/nerdtree'

	Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
	Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'antoinemadec/coc-fzf'

  Plug 'morhetz/gruvbox'
  Plug 'ryanoasis/vim-devicons'
"  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
	Plug 'mlaursen/vim-react-snippets'
"  Plug 'Yggdroot/indentLine'
  Plug	'nathanaelkane/vim-indent-guides'	
	Plug 'pangloss/vim-javascript' 
	Plug 'styled-components/vim-styled-components', { 'branch': 'main'}
 	Plug 'maxmellon/vim-jsx-pretty'
"	Plug 'Valloric/YouCompleteMe', { 'do': './install.py'}
"	Plug 'ycm-core/YouCompleteMe'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'KabbAmine/vCoolor.vim'
"Wakatime
	Plug 'wakatime/vim-wakatime'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'

call plug#end()


"Personnalisation Indent guides
  let g:indent_guides_auto_colors = 0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#4e4e4e	ctermbg=3
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#444444 ctermbg=4
  let g:indent_guides_guide_size = 1

"Indentation
"let g:indentLine_char = '.'
let g:indent_guides_enable_on_vim_startup = 1
  autocmd VimEnter,Colorscheme * :hi NERDTreeDir ctermfg=67   guifg=#5f87af

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsListSnippets="<c-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-u>"
"let g:UltiSnipsJumpBackwardTrigger="<c-i>"

let g:NERDTreeDirArrowExpandable = '-'
let g:NERDTreeDirArrowCollapsible = '|'
let g:NERDTreeWinSize=20
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

"Coc-Snippets

" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
"xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"let g:coc_snippet_next = '<tab>'
"""""""""""

" Ouverture de NERDTree à chaque ouverture de vim
autocmd VimEnter * NERDTree
"Utilisé pour vim-devicons
autocmd FileType nerdtree setlocal nolist
let NERDTreeIgnore = ['\.class$']

let g:coc_global_extensions = ['coc-snippets', 'coc-clangd', 'coc-pairs', 'coc-prettier', 'coc-java', 'coc-tsserver']
"Sur le save prettier est ajouté"
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

"Gruvbox function
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_italic=1
let g:gruvbox_termcolors=16
set background=dark    " Setting dark mode

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"DevIcons colors
"let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
"let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
"let g:NERDTreeFileExtensionHighlightFullName = 1
"let g:NERDTreeExactMatchHighlightFullName = 1
"let g:NERDTreePatternMatchHighlightFullName = 1
"let g:webdevicons_enable = 1
"let g:NERDTreeHighlightFoldersFullName = 1

"let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
"let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
"

	"Changement couleur nerdtree par defaut
let s:colors = {
  \ 'brown'       : "905532",
  \ 'aqua'        : "3AFFDB",
  \ 'blue'        : "689FB6",
  \ 'darkBlue'    : "44788E",
  \ 'purple'      : "834F79",
  \ 'lightPurple' : "834F79",
  \ 'red'         : "AE403F",
  \ 'beige'       : "F5C06F",
  \ 'yellow'      : "F09F17",
  \ 'orange'      : "D4843E",
  \ 'darkOrange'  : "F16529",
  \ 'pink'        : "CB6F6F",
  \ 'salmon'      : "EE6E73",
  \ 'green'       : "8FAA54",
  \ 'lightGreen'  : "31B53E",
  \ 'white'       : "FFFFFF"
\ }

" NERDTrees File highlighting
"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
" exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction

"call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
"call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
"call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
"call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
"call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
"call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

"autocmd VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
