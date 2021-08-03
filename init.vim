set title                 "Muestra el nombre del archivo en la ventana de la terminal
set mouse=a               "Permite la integración del mouse (seleccionar texto, mover el cursor)
set encoding=UTF-8
set clipboard=unnamedplus "copiar en el portapapeles

set relativenumber        "Numero de saltos
set cuc cul               "Resalta la fila y la columna
"set list listchars=tab:>\ ,trail:+,eol:$  "Configuración Parrot
syntax on
set tabstop=5             "numero de espacios visuales por tab
set shiftwidth=5          "numero de espacios tabulados
set softtabstop=5         "numero de espacios en el atabulador al editar
set shiftround 
set expandtab             "los tabuladores son espacios
set hidden                "el archivo no se muestra si noy un archivo para este buffer
set smartcase             "No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set spelllang=en_us,es    " Corregir palabras usando diccionarios en inglés y español
set termguicolors         "Activa colors en la terminal
set splitbelow            "el siguiete buffer se cree abajo (ejem cmd)
set hlsearch              "resalta la busqueda
set incsearch             "resalta la busqueda
set nobackup              "evita recuperar el archivo
set nowritebackup
set cmdheight=2           "numero de lineas de pantalla a utilizar
set updatetime=100        "el archivo de intercambio se guarda en 2s default 4s
set shortmess+=c          "ayuda a evitar todos los mensajes hit-enter (mensajes de ayuda)
syntax enable
set termguicolors


call plug#begin('~/.config/nvim/plugged')

"Intellegence con coc
Plug 'neoclide/coc.nvim', {'branch': 'release'} 

"Tree archives
Plug 'preservim/nerdtree'      

"Devicons
Plug 'ryanoasis/vim-devicons'

"Easymotion
Plug 'easymotion/vim-easymotion'

"Identline
Plug 'Yggdroot/indentLine'

"Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Surround
Plug 'tpope/vim-surround'

"Shougo Muestra la firma de la función.
Plug 'Shougo/echodoc.vim' 

"Plyglot
Plug 'sheerun/vim-polyglot'

"FzF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Treesitter resaltado
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()


"------------------------------------------------------------"

"-------------------------Custom-----------------------"


let mapleader = ','

"Abrir el archivo init.vim 
nnoremap <leader>e :e $MYVIMRC<CR>      

"" Split horizontal, vertical
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Guardar con <líder> + s
nnoremap <leader>w :w<CR>

" Guardar Y Salir
nnoremap <leader>wq :wq<CR>

" Salir sin guardar
nnoremap <leader>we :exit!<CR>


" Moverse al buffer siguiente con control + m
nnoremap <c-m> :bnext<CR>
" Moverse al buffer anterior con <control> + n
nnoremap <c-n> :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
"nnoremap <leader>q :bdelete!<CR>
nnoremap <leader>q :q!<CR>

"quitar la navgacion / (precionar / + esc)
nnoremap / /a<DEL>

"*****************************************************************************
""                                  Macros
"*****************************************************************************

"map <F5> 0//hola<Esc> 
""map <F5> 0gewi{<Esc>nuevo}<Esc>

map <F5> 0i//
map <F6> 0$i<!-- --<Esc>04li
map <F7> 0i/*<Esc>$a  */<Esc>
"

"------------------------------------------------------------"
""                       Resource
"------------------------------------------------------------"
source C:/Users/hack/AppData/Local/nvim/plug-config/coc.vim
source C:/Users/hack/AppData/Local/nvim/NordTheme/lotus.vim
source C:/Users/hack/AppData/Local/nvim/NordTheme/lotusbar.vim

"------------------------------------------------------------"
""                      Nord Theme 
"------------------------------------------------------------"
hi Normal guibg=NONE ctermbg=NONE

nnoremap ,<space> :CHADopen<CR>
nnoremap <space>x :wq!<CR>

let g:indentLine_color_gui = '#ea4c88'
let g:indentLine_char = '⏽ '

set noshowmode

hi EndOfBuffer guifg=bg guibg=bg
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg
hi VertSplit guibg=#302d38 guifg=#302d38
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

"------------------------------------------------------------"
""                  Disable providers python 
"------------------------------------------------------------"


""let g:python_host_prog = 'C:Python27\'

""let g:python3_host_prog = 'C:\Python310\~cripts'
"let g:python3_host_prog = 'C:/Python39'
""let g:loaded_python_provider = 1
""let g:loaded_python3_provider = 1

"------------------------------------------------------------"
""                  NERDTree
"------------------------------------------------------------"

let g:NERDTreeChDirMode = 2  "Cambia el directocrio actual al nodo padre actual
" Abrir/cerrar NERDTree con t
let g:NERDTreeChDirMode = 2 " Cambiar el directorio actual al padre del nodo actual
map <Leader>t :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
"
" Mostrar sólo el nombre del archivo
let g:airline#extensions#tabline#fnamemod = ':t'
" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
" No mostrar el modo actual (ya lo muestra la barra de estado)
set noshowmode

" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#enabled = 1
" Mostrar sólo el nombre del archivo
let g:airline#extensions#tabline#fnamemod = ':t'
" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
" No mostrar el modo actual (ya lo muestra la barra de estado)
set noshowmode

"------------------------------------------------------------"
""                  Devicons
"------------------------------------------------------------"

" Vim devicons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
"configuring the highlight devicons
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:webdevicons_enable_nerdtree = 1


"------------------------------------------------------------"
""                  Easymotion
"------------------------------------------------------------"

nmap <leader>s <Plug>(easymotion-s2)
noremap <up> <nop>
noremap <down> <nop>
let g:EasyMotion_smartcase = 1



"------------------------------------------------------------"
""                    Identline
"------------------------------------------------------------"

"Se ha eliminado este plug
let g:airline#extensions#tabline#enabled = 1  " show open buffers (like tabs)
let g:airline#extensions#tabline#fnamemod = ':t'  " Show only filename
let g:airline_powerline_fonts = 1 " Change separetors to be triangles
let g:airline_theme='tomorrow'
let g:indentLine_char_list = '|'

"g:indent_blankline_char_highlight_list
"
"------------------------------------------------------------"
""                       Git
"------------------------------------------------------------"


noremap <leader>.  :Git<space>add<space>.<CR>
noremap <Leader>gc :Git<space>commit<CR>
noremap <Leader>gl :Git<space>log<CR>
noremap <Leader>gp :Git<space>push<CR>
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Git<space>status<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

""Usage
"Commands
"
"    Plug 'tpope/vim-fugitive'
"    Plug 'junegunn/gv.vim'

"    :GV to open commit browser
"        You can pass git log options to the command, e.g. :GV -S foobar -- plugins.
"    :GV! will only list commits that affected the current file
"    :GV? fills the location list with the revisions of the current file
"
":GV or :GV? can be used in visual mode to track the changes in the selected lines.
"Mappings
"
"    o or <cr> on a commit to display the content of it
"    o or <cr> on commits to display the diff in the range
"    O opens a new tab instead
"    gb for :GBrowse
"    ]] and [[ to move between commits
"    . to start command-line with :Git [CURSOR] SHA à la fugitive
"    q or gq to close

"------------------------------------------------------------"
""                  Surround
"------------------------------------------------------------"
" ysw" => envollver
" ds" => eliminar las "
" cs"' => cambiando de " a '
" yss" => envolver toda la linea
" yss<p => envolver etiquet p
" vS" => envolver en modo visual
" vS<pre => envolver en modo visual con etiquetas
" dst => eliminar etiquetas <>
" cst< => renombrar etiqueta
" yssb => envolver toda la linea con ()

"------------------------------------------------------------"
""                  Shougo
"------------------------------------------------------------"

" Para usar echodoc, debes aumentar el valor de 'cmdheight' 
set cmdheight=2
let g:echodoc_enable_at_startup = 1

"------------------------------------------------------------"
""                  Plyglot
"------------------------------------------------------------"
" Resaltado de syntaxis

"------------------------------------------------------------"
""                  FZF
"------------------------------------------------------------"
"Configuration of FZF cotrl + p
let g:fzf_preview_window = 'right:40%'
nnoremap <c-p> :Files<CR>
nnoremap <c-g> :GitFiles<CR>
" use current git repo/file director with ctrl p
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0
"------------------------------------------------------------"
""                  CocConfigurtion
"------------------------------------------------------------"

nnoremap <C-u> :CocAction<C-R>

let g:coc_global_extensions=['coc-css','coc-json' , 'coc-tsserver' , 'coc-emmet' ,'coc-tslint' , 'coc-prettier', 'coc-html']

"------------------------------------------------------------"
""                  Terminal
"------------------------------------------------------------"

"
" Abrir terminal
map <F2> :split <CR>:ter<CR>:resize 15<CR>
"Controlar el Modo lectura con ESC en la terminal
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
endif

"Hailitar teclas de navegacion
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"Redimencionado de las ventanas aviertas
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

"quitar la navgacion / (precionar / + esc)
nnoremap / /a<DEL>

" Autocompletar parentesis y llaves
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
" inoremap { <CR>{<CR>}<Esc>0
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
""''


"Live server"

""let g:bracey_refresh_on_save=1
""let g:bracey_auto_start_browser=0
""let g:bracey_browser_command='firefox'
""let g:bracey_server_port=5050
""autocmd FileType html,css,javascript map <leader>br :Bracey<CR>
""autocmd FileType html,css,javascript map <leader>st :BraceyStop<CR>
""autocmd FileType html,css,javascript map <leader>re :BraceyReload<CR>

"Treesitter
